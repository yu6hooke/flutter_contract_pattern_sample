import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/ui/pokemon_theme.dart';
import 'package:contract_pattern_sample/core/util/alert_state.dart';
import 'package:contract_pattern_sample/feature/pokemon/pokemon_detail/pokemon_detail_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'pokemon_list_contract.dart';
import 'pokemon_list_notifier.dart';
import 'ui_components/pokemon_list_item.dart';

extension _PokemonListEx on WidgetRef {
  PokemonListNotifier get notifier =>
      read(pokemonListNotifierProvider.notifier);
}

class PokemonListPage extends HookConsumerWidget with AlertStateCompatible {
  const PokemonListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(pokemonListEffectProvider,
        (_, effect) => _handleEffect(context, ref, effect: effect));
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => ref.notifier.send(const PokemonListAction.onAppear()));
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.seelWhite,
      appBar: AppBar(
        title: const Text('ポケモン図鑑'),
        backgroundColor: Theme.of(context).colorScheme.hydreigonBlue,
      ),
      body: const _PokemonListBody(),
    );
  }

  Future<void> _handleEffect(
    BuildContext context,
    WidgetRef ref, {
    required PokemonListEffect effect,
  }) async {
    switch (effect) {
      case None():
        break;

      case GoDetail():
        ref.notifier.consume();
        showPokemonDetailSheet(context, id: effect.id);

      case ShowAlert():
        ref.notifier.consume();
        handleAlertState(context, effect.state);
    }
  }
}

class _PokemonListBody extends HookConsumerWidget {
  const _PokemonListBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(pokemonListNotifierProvider);

    if (uiState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 44,
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.hydreigonBlue,
          flexibleSpace: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '件数: ${uiState.pokemonList.length}',
                  style: Theme.of(context).textTheme.text16.w600,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        SliverStack(
          children: [
            SliverPositioned.fill(
              child: Container(color: Theme.of(context).colorScheme.seelWhite),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                    buildList(ref, pokemonList: uiState.pokemonList)),
              ),
            )
          ],
        ),
      ],
    );
  }

  List<PokemonListItem> buildList(
    WidgetRef ref, {
    required List<Pokemon> pokemonList,
  }) {
    return pokemonList
        .map((pokemon) => PokemonListItem(
              onClicked: (pokemon) => ref.notifier
                  .send(PokemonListAction.itemClicked(pokemon: pokemon)),
              item: pokemon,
            ))
        .toList();
  }
}
