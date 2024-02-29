import 'package:contract_pattern_sample/core/data/repository/pokemon/fake_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_detail/pokemon_detail_contract.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_detail/pokemon_detail_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  late BehaviorSubject<FakePokemonRepositoryState> fakePokemonState;
  late FakePokemonRepository pokemonRepository;
  late ProviderContainer container;
  late int argument;
  buildAccessors() {
    argument = FakePokemonRepositoryState.samplePokemonList.first.id;

    final notifierProvider = pokemonDetailNotifierProvider(
        container.read(pokemonDetailArgsProvider));
    final subscription = container.listen(notifierProvider, (_, __) {});
    addTearDown(subscription.close);

    return (
      container.read(notifierProvider.notifier),
      () => container.read(notifierProvider),
      () => container.read(pokemonDetailEffectProvider),
    );
  }

  group('PokemonDetailNotifier Test', () {
    setUp(() {
      fakePokemonState = BehaviorSubject.seeded(FakePokemonRepositoryState());
      pokemonRepository = FakePokemonRepository.from(fakePokemonState);
      container = ProviderContainer(overrides: [
        pokemonRepositoryProvider.overrideWithValue(pokemonRepository),
        pokemonDetailArgsProvider.overrideWith((ref) => argument),
      ]);
    });

    tearDown(() => container.dispose());

    test('Set Argument And Can Close', () async {
      final (notifier, uiState, effect) = buildAccessors();

      // 画面遷移前に一覧が取得済み
      await pokemonRepository.fetchPokemonList(page: 1);

      await container.pump();

      // 引数がUIStateにセットされている
      expect(
        uiState().item,
        FakePokemonRepositoryState.samplePokemonList.first,
      );

      // 閉じるボタンが押下された
      await notifier.send(const PokemonDetailAction.closeButtonClicked());
      expect(
        effect(),
        const PokemonDetailEffect.close(),
      );
    });
  });
}
