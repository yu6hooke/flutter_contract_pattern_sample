import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart'
    as pokemon_repository;
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'pokemon_usecase.freezed.dart';

final pokemonUseCaseProvider = Provider.autoDispose((ref) {
  return PokemonUseCase(
      ref.watch(pokemon_repository.pokemonRepositoryProvider));
});

class PokemonUseCase {
  const PokemonUseCase(this._pokemonRepository);

  final pokemon_repository.PokemonRepository _pokemonRepository;
  Stream<List<Pokemon>> get pokemonList => _pokemonRepository.pokemonList;

  Future<void> fetch({
    required int page,
  }) async {
    try {
      await _pokemonRepository.fetchPokemonList(page: page);
    } on pokemon_repository.Other catch (_) {
      throw const PokemonUseCaseException.alert(
          state: AlertState.dialogState(message: 'エラー'));
    }
  }
}

@freezed
sealed class PokemonUseCaseException
    with _$PokemonUseCaseException
    implements Exception {
  const factory PokemonUseCaseException.alert({
    required AlertState state,
  }) = Alert;
}
