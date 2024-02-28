import 'dart:async';

import 'package:contract_pattern_sample/core/domain/pokemon/pokemon_usecase.dart';
import 'package:contract_pattern_sample/core/domain/without_stream/without_stream_pokemon_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pokemon_list_contract.dart';

part 'pokemon_list_notifier.g.dart';

final pokemonListEffectProvider = StateProvider<PokemonListEffect>(
  (ref) => const PokemonListEffect.none(),
);

extension PokemonListEx on WidgetRef {
  PokemonListNotifier get pokemonListNotifier =>
      read(pokemonListNotifierProvider.notifier);
}

@riverpod
class PokemonListNotifier extends _$PokemonListNotifier {
  WithoutPokemonUseCase get pokemonUseCase =>
      ref.read(withoutPokemonUseCaseProvider.notifier);

  @override
  PokemonListUiState build() {
    ref.listen(
      withoutPokemonUseCaseProvider.select((value) => value.pokemonList),
      (_, next) => state = state.copyWith(pokemonList: next),
    );
    return const PokemonListUiState();
  }

  void consume() {
    _updateEffect(const PokemonListEffect.none());
  }

  Future<void> send(PokemonListAction action) async {
    action.when(
      onAppear: () async {
        try {
          state = state.copyWith(isLoading: true);
          await pokemonUseCase.fetch(page: 1);
        } on PokemonUseCaseException catch (e) {
          e.when(alert: (alertState) {
            _updateEffect(PokemonListEffect.showAlert(state: alertState));
          });
        } finally {
          state = state.copyWith(isLoading: false);
        }
      },
      itemClicked: (pokemon) {
        _updateEffect(PokemonListEffect.goDetail(id: pokemon.id));
      },
    );
  }

  _updateEffect(PokemonListEffect effect) =>
      ref.read(pokemonListEffectProvider.notifier).update((_) => effect);
}
