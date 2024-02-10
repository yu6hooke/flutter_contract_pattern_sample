import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon.dart';

part 'pokemon_repository.freezed.dart';

abstract class PokemonRepository {
  Stream<List<Pokemon>> get pokemonList;

  Future<void> fetchPokemonList({required int page});
}

@freezed
class PokemonRepositoryException
    with _$PokemonRepositoryException
    implements Exception {
  const factory PokemonRepositoryException.other(Exception detail) = Other;
}
