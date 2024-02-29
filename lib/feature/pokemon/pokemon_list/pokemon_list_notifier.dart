import 'dart:async';

import 'package:contract_pattern_sample/core/domain/pokemon/pokemon_usecase.dart'
    as pokemon_usecase;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pokemon_list_contract.dart';

part 'pokemon_list_notifier.g.dart';

final pokemonListEffectProvider =
    StateProvider((ref) => const PokemonListEffect.none());

@riverpod
class PokemonListNotifier extends _$PokemonListNotifier
    implements PokemonListContract {
  late final StreamSubscription _pokemonListSubscription;

  pokemon_usecase.PokemonUseCase get _pokemonUseCase =>
      ref.read(pokemon_usecase.pokemonUseCaseProvider);

  @override
  PokemonListUiState build() {
    _pokemonListSubscription = _pokemonUseCase.pokemonList
        .listen((list) => state = state.copyWith(pokemonList: list));
    ref.onDispose(_pokemonListSubscription.cancel);

    return const PokemonListUiState();
  }

  @override
  void consume() {
    _updateEffect(const PokemonListEffect.none());
  }

  @override
  Future<void> send(PokemonListAction action) async {
    switch (action) {
      case OnAppear():
        try {
          state = state.copyWith(isLoading: true);
          await _pokemonUseCase.fetch(page: 1);
        } on pokemon_usecase.Alert catch (e) {
          _updateEffect(PokemonListEffect.showAlert(state: e.state));
        } finally {
          state = state.copyWith(isLoading: false);
        }

      case ItemClicked(:final pokemon):
        _updateEffect(PokemonListEffect.goDetail(id: pokemon.id));
    }
  }

  _updateEffect(PokemonListEffect effect) =>
      ref.read(pokemonListEffectProvider.notifier).update((state) => effect);
}
