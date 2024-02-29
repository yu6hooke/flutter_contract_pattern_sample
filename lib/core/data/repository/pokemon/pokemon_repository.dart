import 'package:contract_pattern_sample/core/network/pokemon_api.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'pokemon.dart';

part 'pokemon_repository.freezed.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepository(ref.watch(pokemonApiClientProvider));
});

class PokemonRepository {
  PokemonRepository(this._pokemonApiClient);

  final PokemonApi _pokemonApiClient;
  final _pokemonList = BehaviorSubject<List<Pokemon>>.seeded([]);

  Stream<List<Pokemon>> get pokemonList => _pokemonList.stream;

  Future<void> fetchPokemonList({
    required int page,
  }) async {
    try {
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
      _pokemonList
          .add(pokemonList.map((p) => Pokemon.fromResponse(p)).toList());
    } on DioException catch (e) {
      throw PokemonRepositoryException.other(e);
    }
  }
}

@freezed
sealed class PokemonRepositoryException
    with _$PokemonRepositoryException
    implements Exception {
  const factory PokemonRepositoryException.other(Exception detail) = Other;
}
