import 'package:contract_pattern_sample/core/model/pokemon_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon({
    required int id,
    required String name,
    required String imageUrl,
    required List<String> types,
  }) = _Pokemon;

  factory Pokemon.fromResponse(PokemonResponse response) => Pokemon(
        id: response.id,
        name: response.name,
        imageUrl: response.sprites.frontDefault,
        types: response.types.map((type) => type.type.name).toList(),
      );
}
