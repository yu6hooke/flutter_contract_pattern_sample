// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'without_stream_pokemon_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonRepositoryState {
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonRepositoryStateCopyWith<PokemonRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonRepositoryStateCopyWith<$Res> {
  factory $PokemonRepositoryStateCopyWith(PokemonRepositoryState value,
          $Res Function(PokemonRepositoryState) then) =
      _$PokemonRepositoryStateCopyWithImpl<$Res, PokemonRepositoryState>;
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class _$PokemonRepositoryStateCopyWithImpl<$Res,
        $Val extends PokemonRepositoryState>
    implements $PokemonRepositoryStateCopyWith<$Res> {
  _$PokemonRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
  }) {
    return _then(_value.copyWith(
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonRepositoryStateImplCopyWith<$Res>
    implements $PokemonRepositoryStateCopyWith<$Res> {
  factory _$$PokemonRepositoryStateImplCopyWith(
          _$PokemonRepositoryStateImpl value,
          $Res Function(_$PokemonRepositoryStateImpl) then) =
      __$$PokemonRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class __$$PokemonRepositoryStateImplCopyWithImpl<$Res>
    extends _$PokemonRepositoryStateCopyWithImpl<$Res,
        _$PokemonRepositoryStateImpl>
    implements _$$PokemonRepositoryStateImplCopyWith<$Res> {
  __$$PokemonRepositoryStateImplCopyWithImpl(
      _$PokemonRepositoryStateImpl _value,
      $Res Function(_$PokemonRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
  }) {
    return _then(_$PokemonRepositoryStateImpl(
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonRepositoryStateImpl implements _PokemonRepositoryState {
  const _$PokemonRepositoryStateImpl(
      {final List<Pokemon> pokemonList = const []})
      : _pokemonList = pokemonList;

  final List<Pokemon> _pokemonList;
  @override
  @JsonKey()
  List<Pokemon> get pokemonList {
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonList);
  }

  @override
  String toString() {
    return 'PokemonRepositoryState(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonRepositoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonRepositoryStateImplCopyWith<_$PokemonRepositoryStateImpl>
      get copyWith => __$$PokemonRepositoryStateImplCopyWithImpl<
          _$PokemonRepositoryStateImpl>(this, _$identity);
}

abstract class _PokemonRepositoryState implements PokemonRepositoryState {
  const factory _PokemonRepositoryState({final List<Pokemon> pokemonList}) =
      _$PokemonRepositoryStateImpl;

  @override
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$PokemonRepositoryStateImplCopyWith<_$PokemonRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
