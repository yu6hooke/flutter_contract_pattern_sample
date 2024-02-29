import 'package:contract_pattern_sample/core/data/repository/pokemon/fake_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_list/pokemon_list_contract.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_list/pokemon_list_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late BehaviorSubject<FakePokemonRepositoryState> fakePokemonState;
  late FakePokemonRepository pokemonRepository;
  late ProviderContainer container;
  buildAccessors() {
    final subscription =
        container.listen(pokemonListNotifierProvider, (_, __) {});
    addTearDown(subscription.close);
    return (
      container.read(pokemonListNotifierProvider.notifier),
      () => container.read(pokemonListNotifierProvider),
      () => container.read(pokemonListEffectProvider),
    );
  }

  group('PokemonListNotifier Test', () {
    setUp(() {
      fakePokemonState = BehaviorSubject.seeded(FakePokemonRepositoryState());
      pokemonRepository = FakePokemonRepository.from(fakePokemonState);
      container = ProviderContainer(overrides: [
        pokemonRepositoryProvider.overrideWithValue(pokemonRepository),
      ]);
    });

    tearDown(() => container.dispose());

    test('Fetch Pokemon List upon Screen Opening', () async {
      final (notifier, uiState, _) = buildAccessors();

      // 画面が開かれた
      await notifier.send(const PokemonListAction.onAppear());

      // ポケモンのリストが取得された
      expect(
        uiState().pokemonList,
        FakePokemonRepositoryState.samplePokemonList,
      );
    });

    test(
        'Fetch Pokemon List upon Screen Opening, then Navigate to the Details Screen',
        () async {
      final (notifier, uiState, effect) = buildAccessors();

      // 画面が開かれた
      await notifier.send(const PokemonListAction.onAppear());

      // ポケモンのリストが取得された
      expect(
        uiState().pokemonList,
        FakePokemonRepositoryState.samplePokemonList,
      );

      // アイテムをタップし、詳細画面に遷移した
      final firstItem = uiState().pokemonList.first;
      await notifier.send(PokemonListAction.itemClicked(pokemon: firstItem));
      expect(
        effect(),
        PokemonListEffect.goDetail(id: firstItem.id),
      );
    });

    test('Fetch Pokemon List upon Handle AlertState', () async {
      final (notifier, uiState, effect) = buildAccessors();

      // 通信でエラーが発生するようにしておく
      pokemonRepository.handler.fetchPokemonList = (_) {
        throw PokemonRepositoryException.other(Exception('サンプル'));
      };

      // 画面が開かれた
      await notifier.send(const PokemonListAction.onAppear());

      // ポケモンリストが取得されていない
      expect(uiState().pokemonList, []);

      // エラーハンドリングできている
      expect(
        effect(),
        const PokemonListEffect.showAlert(
            state: AlertState.dialogState(message: 'エラー')),
      );
    });
  });
}
