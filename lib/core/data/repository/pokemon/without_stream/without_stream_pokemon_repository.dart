import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/core/network/pokemon_api.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pokemon.dart';

part 'without_stream_pokemon_repository.freezed.dart';
part 'without_stream_pokemon_repository.g.dart';

@freezed
class PokemonRepositoryState with _$PokemonRepositoryState {
  const factory PokemonRepositoryState({
    @Default([]) List<Pokemon> pokemonList,
  }) = _PokemonRepositoryState;
}

@Riverpod(keepAlive: true)
class WithoutStreamPokemonRepository extends _$WithoutStreamPokemonRepository {
  PokemonApi get _pokemonApiClient => ref.read(pokemonApiClientProvider);

  @override
  PokemonRepositoryState build() {
    return const PokemonRepositoryState();
  }

  Future<void> fetchPokemonList({
    required int page,
  }) async {
    final listResponse =
        await _pokemonApiClient.getPokemons(offset: 0, limit: 5);
    final pokemonIds = listResponse.results
        .map((result) => Uri.parse(result.url).pathSegments[3])
        .where((id) => id.isNotEmpty);

    final pokemonList = await Future.wait(
      pokemonIds.map((id) => _pokemonApiClient.getPokemon(id: id)),
      eagerError: true,
    )
        .then((responses) => responses, onError: (e) => throw e)
        .catchError((e) => throw e);

    state = state.copyWith(
      pokemonList: pokemonList.map((p) => Pokemon.fromResponse(p)).toList(),
    );
    try {} on DioException catch (e) {
      throw PokemonRepositoryException.other(e);
    }
  }
}
