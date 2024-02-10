import 'package:contract_pattern_sample/core/network/pokemon_api.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'pokemon.dart';
import 'pokemon_repository.dart';

final pokemonRepositoryProvider = Provider<PokemonRepository>((ref) {
  return PokemonRepositoryImpl(
    pokemonApiClient: ref.watch(pokemonApiClientProvider),
  );
});

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl({
    required this.pokemonApiClient,
  });

  final PokemonApi pokemonApiClient;
  final _pokemonList = BehaviorSubject<List<Pokemon>>.seeded([]);

  @override
  Stream<List<Pokemon>> get pokemonList => _pokemonList.stream;

  @override
  Future<void> fetchPokemonList({
    required int page,
  }) async {
    try {
      final listResponse =
          await pokemonApiClient.getPokemons(offset: 0, limit: 5);
      final pokemonIds = listResponse.results
          .map((result) => Uri.parse(result.url).pathSegments[3])
          .where((id) => id.isNotEmpty);

      final pokemonList = await Future.wait(
        pokemonIds.map((id) => pokemonApiClient.getPokemon(id: id)),
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
