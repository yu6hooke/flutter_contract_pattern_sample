import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/without_stream/without_stream_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pokemon/pokemon_usecase.dart';

part 'without_stream_pokemon_usecase.freezed.dart';
part 'without_stream_pokemon_usecase.g.dart';

@freezed
class PokemonUseCaseState with _$PokemonUseCaseState {
  factory PokemonUseCaseState({
    required List<Pokemon> pokemonList,
  }) = _PokemonUseCaseState;
}

@riverpod
class WithoutPokemonUseCase extends _$WithoutPokemonUseCase {
  WithoutStreamPokemonRepository get _pokemonRepository =>
      ref.read(withoutStreamPokemonRepositoryProvider.notifier);

  @override
  PokemonUseCaseState build() {
    final pokemonList = ref.watch(withoutStreamPokemonRepositoryProvider
        .select((value) => value.pokemonList));
    return PokemonUseCaseState(pokemonList: pokemonList);
  }

  Future<void> fetch({
    required int page,
  }) async {
    try {
      await _pokemonRepository.fetchPokemonList(page: page);
    } on PokemonRepositoryException catch (e) {
      e.when(other: (detail) {
        throw const PokemonUseCaseException.alert(
            state: AlertState.dialogState(message: 'エラー'));
      });
    }
  }
}
