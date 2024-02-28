import 'dart:async';

import 'package:collection/collection.dart';
import 'package:contract_pattern_sample/core/domain/pokemon/pokemon_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'pokemon_detail_contract.dart';

part 'pokemon_detail_notifier.g.dart';

final pokemonDetailArgsProvider = StateProvider<int>(
  (ref) => throw UnimplementedError(),
);
final pokemonDetailEffectProvider = StateProvider<PokemonDetailEffect>(
  (ref) => const PokemonDetailEffect.none(),
);

extension PokemonDetailEx on WidgetRef {
  PokemonDetailNotifier get pokemonDetailNotifier {
    final id = read(pokemonDetailArgsProvider);
    return read(pokemonDetailNotifierProvider(id).notifier);
  }
}

@riverpod
class PokemonDetailNotifier extends _$PokemonDetailNotifier {
  late final StreamSubscription _pokemonListSubscription;

  PokemonUseCase get pokemonUseCase => ref.read(pokemonUseCaseProvider);

  @override
  PokemonDetailUiState build(int id) {
    _pokemonListSubscription = pokemonUseCase.pokemonList.listen((list) {
      state = state.copyWith(item: list.firstWhereOrNull((p) => p.id == id));
    });
    ref.onDispose(() {
      _pokemonListSubscription.cancel();
    });
    return const PokemonDetailUiState(item: null);
  }

  void consume() {
    _updateEffect(const PokemonDetailEffect.none());
  }

  Future<void> send(PokemonDetailAction action) async {
    action.when(
      closeButtonClicked: () {
        _updateEffect(const PokemonDetailEffect.close());
      },
    );
  }

  _updateEffect(PokemonDetailEffect effect) =>
      ref.read(pokemonDetailEffectProvider.notifier).update((_) => effect);
}
