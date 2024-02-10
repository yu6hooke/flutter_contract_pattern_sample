import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';

@freezed
class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    String? next,
    String? previous,
    required List<PokemonListResultResponse> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}

@freezed
class PokemonListResultResponse with _$PokemonListResultResponse {
  const factory PokemonListResultResponse({
    required String name,
    required String url,
  }) = _PokemonListResultResponse;

  factory PokemonListResultResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResultResponseFromJson(json);
}
