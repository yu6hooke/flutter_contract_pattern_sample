// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseImpl _$$PokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      sprites: PokemonSpritesResponse.fromJson(
          json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonResponseImplToJson(
        _$PokemonResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sprites': instance.sprites,
      'types': instance.types,
    };

_$PokemonSpritesResponseImpl _$$PokemonSpritesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpritesResponseImpl(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$$PokemonSpritesResponseImplToJson(
        _$PokemonSpritesResponseImpl instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

_$PokemonTypeResponseImpl _$$PokemonTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeResponseImpl(
      slot: json['slot'] as int,
      type: PokemonTypeTypeResponse.fromJson(
          json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeResponseImplToJson(
        _$PokemonTypeResponseImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$PokemonTypeTypeResponseImpl _$$PokemonTypeTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeTypeResponseImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonTypeTypeResponseImplToJson(
        _$PokemonTypeTypeResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
