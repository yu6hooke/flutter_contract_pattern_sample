// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fake_pokemon_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FakePokemonRepositoryState {
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FakePokemonRepositoryStateCopyWith<FakePokemonRepositoryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FakePokemonRepositoryStateCopyWith<$Res> {
  factory $FakePokemonRepositoryStateCopyWith(FakePokemonRepositoryState value,
          $Res Function(FakePokemonRepositoryState) then) =
      _$FakePokemonRepositoryStateCopyWithImpl<$Res,
          FakePokemonRepositoryState>;
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class _$FakePokemonRepositoryStateCopyWithImpl<$Res,
        $Val extends FakePokemonRepositoryState>
    implements $FakePokemonRepositoryStateCopyWith<$Res> {
  _$FakePokemonRepositoryStateCopyWithImpl(this._value, this._then);

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
abstract class _$$FakePokemonRepositoryStateImplCopyWith<$Res>
    implements $FakePokemonRepositoryStateCopyWith<$Res> {
  factory _$$FakePokemonRepositoryStateImplCopyWith(
          _$FakePokemonRepositoryStateImpl value,
          $Res Function(_$FakePokemonRepositoryStateImpl) then) =
      __$$FakePokemonRepositoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pokemon> pokemonList});
}

/// @nodoc
class __$$FakePokemonRepositoryStateImplCopyWithImpl<$Res>
    extends _$FakePokemonRepositoryStateCopyWithImpl<$Res,
        _$FakePokemonRepositoryStateImpl>
    implements _$$FakePokemonRepositoryStateImplCopyWith<$Res> {
  __$$FakePokemonRepositoryStateImplCopyWithImpl(
      _$FakePokemonRepositoryStateImpl _value,
      $Res Function(_$FakePokemonRepositoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonList = null,
  }) {
    return _then(_$FakePokemonRepositoryStateImpl(
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$FakePokemonRepositoryStateImpl implements _FakePokemonRepositoryState {
  _$FakePokemonRepositoryStateImpl({final List<Pokemon> pokemonList = const []})
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
    return 'FakePokemonRepositoryState(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FakePokemonRepositoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FakePokemonRepositoryStateImplCopyWith<_$FakePokemonRepositoryStateImpl>
      get copyWith => __$$FakePokemonRepositoryStateImplCopyWithImpl<
          _$FakePokemonRepositoryStateImpl>(this, _$identity);
}

abstract class _FakePokemonRepositoryState
    implements FakePokemonRepositoryState {
  factory _FakePokemonRepositoryState({final List<Pokemon> pokemonList}) =
      _$FakePokemonRepositoryStateImpl;

  @override
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$FakePokemonRepositoryStateImplCopyWith<_$FakePokemonRepositoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
