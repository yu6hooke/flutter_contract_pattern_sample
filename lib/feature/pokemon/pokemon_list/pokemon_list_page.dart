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

class PokemonListPage extends HookConsumerWidget with AlertStateCompatible {
  const PokemonListPage({super.key});

  static const routeName = 'base-state2';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(pokemonListEffectProvider, (_, effect) {
      _handleEffect(context, ref, effect: effect);
    });
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.pokemonListNotifier.send(const PokemonListAction.onAppear());
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.seelWhite,
      appBar: AppBar(
        title: const Text('ポケモン図鑑'),
        backgroundColor: Theme.of(context).colorScheme.hydreigonBlue,
      ),
      body: const PokemonListBody(),
    );
  }

  Future<void> _handleEffect(
    BuildContext context,
    WidgetRef ref, {
    required PokemonListEffect effect,
  }) async {
    effect.when(
      none: () {},
      goDetail: (id) {
        ref.pokemonListNotifier.consume();
        showPokemonDetailSheet(context, id: id);
      },
      showAlert: (state) {
        ref.pokemonListNotifier.consume();
        handleAlertState(context, state);
      },
    );
  }
}

class PokemonListBody extends HookConsumerWidget {
  const PokemonListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(pokemonListNotifierProvider);

    if (uiState.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final pokemonItemList = uiState.pokemonList
        .map((pokemon) => PokemonListItem(
              onClicked: (pokemon) => ref.pokemonListNotifier
                  .send(PokemonListAction.itemClicked(pokemon: pokemon)),
              item: pokemon,
            ))
        .toList();

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
                delegate: SliverChildListDelegate(pokemonItemList),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class PokemonListItem extends StatelessWidget {
  const PokemonListItem({
    super.key,
    required this.onClicked,
    required this.item,
  });

  final void Function(Pokemon) onClicked;
  final Pokemon item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onClicked(item),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              // Name
              Text(
                '${item.id.toString().padLeft(4, '0')} - ${item.name}',
                style: Theme.of(context).textTheme.text14.w600,
              ),

              // Thumbnail
              const Spacer(),
              Image.network(item.imageUrl, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
