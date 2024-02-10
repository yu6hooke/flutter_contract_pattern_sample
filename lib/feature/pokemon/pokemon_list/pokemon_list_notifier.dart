import 'dart:async';

import 'package:contract_pattern_sample/core/domain/pokemon/pokemon_usecase.dart';
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
  late final StreamSubscription _pokemonListSubscription;

  PokemonUseCase get pokemonUseCase => ref.read(pokemonUseCaseProvider);

  @override
  PokemonListUiState build() {
    _pokemonListSubscription = pokemonUseCase.pokemonList.listen((list) {
      state = state.copyWith(pokemonList: list);
    });
    ref.onDispose(() {
      _pokemonListSubscription.cancel();
    });

    return const PokemonListUiState();
  }

  void consume() {
    _effectUpdater(const PokemonListEffect.none());
  }

  Future<void> send(PokemonListAction action) async {
    action.when(
      onAppear: () async {
        try {
          state = state.copyWith(isLoading: true);
          await pokemonUseCase.fetch(page: 1);
        } on PokemonUseCaseException catch (e) {
          e.when(alert: (alertState) {
            _effectUpdater(PokemonListEffect.showAlert(state: alertState));
          });
        } finally {
          state = state.copyWith(isLoading: false);
        }
      },
      itemClicked: (pokemon) {
        _effectUpdater(PokemonListEffect.goDetail(id: pokemon.id));
      },
    );
  }

  void _effectUpdater(PokemonListEffect effect) =>
      ref.read(pokemonListEffectProvider.notifier).update((state) => effect);
}
