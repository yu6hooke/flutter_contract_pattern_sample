import 'package:contract_pattern_sample/core/data/repository/pokemon/fake_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository_impl.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_list/pokemon_list_contract.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_list/pokemon_list_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  group('PokemonListNotifier Test', () {
    late BehaviorSubject<FakePokemonRepositoryState> fakePokemonState;
    late FakePokemonRepository pokemonRepository;
    late ProviderContainer container;

    setUp(() {
      fakePokemonState = BehaviorSubject.seeded(FakePokemonRepositoryState());
      pokemonRepository = FakePokemonRepository.from(fakePokemonState);
      container = ProviderContainer(overrides: [
        pokemonRepositoryProvider.overrideWithValue(pokemonRepository),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('Fetch Pokemon List upon Screen Opening', () async {
      final notifier = container.read(pokemonListNotifierProvider.notifier);
      final uiStateSubscription =
          container.listen(pokemonListNotifierProvider, (previous, next) {});
      addTearDown(uiStateSubscription.close);

      // 画面が開かれた
      notifier.send(const PokemonListAction.onAppear());

      await container.pump();

      // ポケモンのリストが取得された
      expect(
        container.read(pokemonListNotifierProvider).pokemonList,
        FakePokemonRepositoryState.samplePokemonList,
      );
    });

    test(
        'Fetch Pokemon List upon Screen Opening, then Navigate to the Details Screen',
        () async {
      final notifier = container.read(pokemonListNotifierProvider.notifier);
      final uiStateSubscription =
          container.listen(pokemonListNotifierProvider, (previous, next) {});
      addTearDown(uiStateSubscription.close);

      // 画面が開かれた
      notifier.send(const PokemonListAction.onAppear());

      await container.pump();

      // ポケモンのリストが取得された
      expect(
        container.read(pokemonListNotifierProvider).pokemonList,
        FakePokemonRepositoryState.samplePokemonList,
      );

      // アイテムをタップし、詳細画面に遷移した
      final firstItem =
          container.read(pokemonListNotifierProvider).pokemonList.first;
      notifier.send(PokemonListAction.itemClicked(pokemon: firstItem));
      expect(
        container.read(pokemonListEffectProvider),
        PokemonListEffect.goDetail(id: firstItem.id),
      );
    });

    test('Fetch Pokemon List upon Handle AlertState', () async {
      final notifier = container.read(pokemonListNotifierProvider.notifier);
      final uiStateSubscription =
          container.listen(pokemonListNotifierProvider, (previous, next) {});
      addTearDown(uiStateSubscription.close);

      // 通信でエラーが発生するようにしておく
      pokemonRepository.handler.fetchPokemonList = (_) {
        throw PokemonRepositoryException.other(Exception('サンプル'));
      };

      // 画面が開かれた
      notifier.send(const PokemonListAction.onAppear());

      await container.pump();

      // ポケモンリストが取得されていない
      expect(
        container.read(pokemonListNotifierProvider).pokemonList,
        [],
      );

      // エラーハンドリングできている
      expect(
          container.read(pokemonListEffectProvider),
          const PokemonListEffect.showAlert(
              state: AlertState.dialogState(message: 'エラー')));
    });
  });
}
