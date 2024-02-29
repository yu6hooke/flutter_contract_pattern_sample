import 'dart:async';

import 'package:collection/collection.dart';
import 'package:contract_pattern_sample/core/domain/pokemon/pokemon_usecase.dart'
    as pokemon_usecase;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pokemon_detail_contract.dart';

part 'pokemon_detail_notifier.g.dart';

final pokemonDetailArgsProvider =
    StateProvider<int>((ref) => throw UnimplementedError());
final pokemonDetailEffectProvider =
    StateProvider((ref) => const PokemonDetailEffect.none());

@riverpod
class PokemonDetailNotifier extends _$PokemonDetailNotifier
    implements PokemonDetailContract {
  late final StreamSubscription _pokemonListSubscription;

  pokemon_usecase.PokemonUseCase get _pokemonUseCase =>
      ref.read(pokemon_usecase.pokemonUseCaseProvider);

  @override
  PokemonDetailUiState build(int id) {
    _pokemonListSubscription = _pokemonUseCase.pokemonList.listen((list) =>
        state = state.copyWith(item: list.firstWhereOrNull((p) => p.id == id)));
    ref.onDispose(_pokemonListSubscription.cancel);

    return const PokemonDetailUiState(item: null);
  }

  @override
  void consume() {
    _updateEffect(const PokemonDetailEffect.none());
  }

  @override
  Future<void> send(PokemonDetailAction action) async {
    switch (action) {
      case CloseButtonClicked():
        _updateEffect(const PokemonDetailEffect.close());
    }
  }

  _updateEffect(PokemonDetailEffect effect) =>
      ref.read(pokemonDetailEffectProvider.notifier).update((state) => effect);
}
