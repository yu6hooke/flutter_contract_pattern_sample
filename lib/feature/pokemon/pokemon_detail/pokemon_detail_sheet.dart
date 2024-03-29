import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:contract_pattern_sample/core/ui/pokemon_theme.dart';

import 'pokemon_detail_contract.dart';
import 'pokemon_detail_notifier.dart';

extension _PokemonDetailEx on WidgetRef {
  PokemonDetailNotifierProvider get notifierProvider {
    final id = watch(pokemonDetailArgsProvider);
    return pokemonDetailNotifierProvider(id);
  }

  PokemonDetailNotifier get notifier {
    final id = read(pokemonDetailArgsProvider);
    return read(pokemonDetailNotifierProvider(id).notifier);
  }
}

void showPokemonDetailSheet(
  BuildContext context, {
  required int id,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return ProviderScope(
        overrides: [pokemonDetailArgsProvider.overrideWith((ref) => id)],
        child: const PokemonDetailSheet(),
      );
    },
  );
}

class PokemonDetailSheet extends HookConsumerWidget {
  const PokemonDetailSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(pokemonDetailEffectProvider,
        (_, effect) => _handleEffect(context, ref, effect: effect));

    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.seelWhite,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.hydreigonBlue,
          automaticallyImplyLeading: false,
          actions: [
            CloseButton(
              onPressed: () => ref.notifier
                  .send(const PokemonDetailAction.closeButtonClicked()),
            ),
          ],
        ),
        body: const _PokemonDetailBody(),
      ),
    );
  }

  Future<void> _handleEffect(
    BuildContext context,
    WidgetRef ref, {
    required PokemonDetailEffect effect,
  }) async {
    switch (effect) {
      case None():
        break;

      case Close():
        ref.notifier.consume();
        Navigator.pop(context);
    }
  }
}

class _PokemonDetailBody extends HookConsumerWidget {
  const _PokemonDetailBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(ref.notifierProvider.select((state) => state.item));

    if (item == null) {
      return Center(
        child: Text(
          'Not Found',
          style: Theme.of(context).textTheme.text16.w600,
        ),
      );
    }

    return CustomScrollView(
      slivers: [
        MultiSliver(children: [
          // Thumbnail
          SizedBox(
            width: double.infinity,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Description
              const Gap(10),
              Text(
                'details',
                style: Theme.of(context).textTheme.text14.w600,
              ),
              Text(
                item.name,
                style: Theme.of(context).textTheme.text24.w600,
              ),

              // Types
              const Gap(10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: item.types
                    .map(
                      (type) => Chip(
                        label: Text(
                          type,
                          style: Theme.of(context).textTheme.text14.w600,
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.type(from: type),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
