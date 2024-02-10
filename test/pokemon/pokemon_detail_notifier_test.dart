import 'package:contract_pattern_sample/core/data/repository/pokemon/fake_pokemon_repository.dart';
import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon_repository_impl.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_detail/pokemon_detail_contract.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_detail/pokemon_detail_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  group('PokemonDetailNotifier Test', () {
    late BehaviorSubject<FakePokemonRepositoryState> fakePokemonState;
    late FakePokemonRepository pokemonRepository;
    late ProviderContainer container;
    final pokemon = FakePokemonRepositoryState.samplePokemonList.first;

    setUp(() {
      fakePokemonState = BehaviorSubject.seeded(FakePokemonRepositoryState());
      pokemonRepository = FakePokemonRepository.from(fakePokemonState);
      container = ProviderContainer(overrides: [
        pokemonRepositoryProvider.overrideWithValue(pokemonRepository),
        pokemonDetailArgsProvider.overrideWith((ref) => pokemon.id),
      ]);
    });

    tearDown(() {
      container.dispose();
    });

    test('Set Argument And Can Close', () async {
      final notifier =
          container.read(pokemonDetailNotifierProvider(pokemon.id).notifier);
      final uiStateSubscription = container.listen(
          pokemonDetailNotifierProvider(pokemon.id), (previous, next) {});
      addTearDown(uiStateSubscription.close);

      // 画面遷移前に一覧が取得済み
      await pokemonRepository.fetchPokemonList(page: 1);

      await container.pump();

      // 引数がUIStateにセットされている
      expect(
        container.read(pokemonDetailNotifierProvider(pokemon.id)).item,
        pokemon,
      );

      // 閉じるボタンが押下された
      notifier.send(const PokemonDetailAction.closeButtonClicked());
      expect(
        container.read(pokemonDetailEffectProvider),
        const PokemonDetailEffect.close(),
      );
    });
  });
}
