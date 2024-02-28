// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'without_stream_pokemon_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonUseCaseState {
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonUseCaseStateCopyWith<PokemonUseCaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonUseCaseStateCopyWith<$Res> {
  factory $PokemonUseCaseStateCopyWith(
          PokemonUseCaseState value, $Res Function(PokemonUseCaseState) then) =
      _$PokemonUseCaseStateCopyWithImpl<$Res, PokemonUseCaseState>;
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class _$PokemonUseCaseStateCopyWithImpl<$Res, $Val extends PokemonUseCaseState>
    implements $PokemonUseCaseStateCopyWith<$Res> {
  _$PokemonUseCaseStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PokemonUseCaseStateImplCopyWith<$Res>
    implements $PokemonUseCaseStateCopyWith<$Res> {
  factory _$$PokemonUseCaseStateImplCopyWith(_$PokemonUseCaseStateImpl value,
          $Res Function(_$PokemonUseCaseStateImpl) then) =
      __$$PokemonUseCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class __$$PokemonUseCaseStateImplCopyWithImpl<$Res>
    extends _$PokemonUseCaseStateCopyWithImpl<$Res, _$PokemonUseCaseStateImpl>
    implements _$$PokemonUseCaseStateImplCopyWith<$Res> {
  __$$PokemonUseCaseStateImplCopyWithImpl(_$PokemonUseCaseStateImpl _value,
      $Res Function(_$PokemonUseCaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
  }) {
    return _then(_$PokemonUseCaseStateImpl(
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonUseCaseStateImpl implements _PokemonUseCaseState {
  _$PokemonUseCaseStateImpl({required final List<Pokemon> pokemonList})
      : _pokemonList = pokemonList;

  final List<Pokemon> _pokemonList;
  @override
  List<Pokemon> get pokemonList {
    if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemonList);
  }

  @override
  String toString() {
    return 'PokemonUseCaseState(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonUseCaseStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonUseCaseStateImplCopyWith<_$PokemonUseCaseStateImpl> get copyWith =>
      __$$PokemonUseCaseStateImplCopyWithImpl<_$PokemonUseCaseStateImpl>(
          this, _$identity);
}

abstract class _PokemonUseCaseState implements PokemonUseCaseState {
  factory _PokemonUseCaseState({required final List<Pokemon> pokemonList}) =
      _$PokemonUseCaseStateImpl;

  @override
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$PokemonUseCaseStateImplCopyWith<_$PokemonUseCaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
