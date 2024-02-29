import 'package:contract_pattern_sample/core/data/repository/pokemon/pokemon.dart';
import 'package:contract_pattern_sample/core/ui/pokemon_theme.dart';
import 'package:flutter/material.dart';

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
