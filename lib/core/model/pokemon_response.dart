import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse {
  const factory PokemonResponse({
    required int id,
    required String name,
    required PokemonSpritesResponse sprites,
    required List<PokemonTypeResponse> types,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseFromJson(json);
}

@freezed
class PokemonSpritesResponse with _$PokemonSpritesResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PokemonSpritesResponse({
    required String frontDefault,
  }) = _PokemonSpritesResponse;

  factory PokemonSpritesResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesResponseFromJson(json);
}

@freezed
class PokemonTypeResponse with _$PokemonTypeResponse {
  const factory PokemonTypeResponse({
    required int slot,
    required PokemonTypeTypeResponse type,
  }) = _PokemonTypeResponse;

  factory PokemonTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeResponseFromJson(json);
}

@freezed
class PokemonTypeTypeResponse with _$PokemonTypeTypeResponse {
  const factory PokemonTypeTypeResponse({
    required String name,
    required String url,
  }) = _PokemonTypeTypeResponse;

  factory PokemonTypeTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeTypeResponseFromJson(json);
}
