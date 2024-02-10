// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonListUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Pokemon> get pokemonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonListUiStateCopyWith<PokemonListUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListUiStateCopyWith<$Res> {
  factory $PokemonListUiStateCopyWith(
          PokemonListUiState value, $Res Function(PokemonListUiState) then) =
      _$PokemonListUiStateCopyWithImpl<$Res, PokemonListUiState>;
  @useResult
  $Res call({bool isLoading, List<Pokemon> pokemonList});
}

/// @nodoc
class _$PokemonListUiStateCopyWithImpl<$Res, $Val extends PokemonListUiState>
    implements $PokemonListUiStateCopyWith<$Res> {
  _$PokemonListUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pokemonList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemonList: null == pokemonList
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListUiStateImplCopyWith<$Res>
    implements $PokemonListUiStateCopyWith<$Res> {
  factory _$$PokemonListUiStateImplCopyWith(_$PokemonListUiStateImpl value,
          $Res Function(_$PokemonListUiStateImpl) then) =
      __$$PokemonListUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Pokemon> pokemonList});
}

/// @nodoc
class __$$PokemonListUiStateImplCopyWithImpl<$Res>
    extends _$PokemonListUiStateCopyWithImpl<$Res, _$PokemonListUiStateImpl>
    implements _$$PokemonListUiStateImplCopyWith<$Res> {
  __$$PokemonListUiStateImplCopyWithImpl(_$PokemonListUiStateImpl _value,
      $Res Function(_$PokemonListUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pokemonList = null,
  }) {
    return _then(_$PokemonListUiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemonList: null == pokemonList
          ? _value._pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonListUiStateImpl implements _PokemonListUiState {
  const _$PokemonListUiStateImpl(
      {this.isLoading = false, final List<Pokemon> pokemonList = const []})
      : _pokemonList = pokemonList;

  @override
  @JsonKey()
  final bool isLoading;
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
    return 'PokemonListUiState(isLoading: $isLoading, pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._pokemonList, _pokemonList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_pokemonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListUiStateImplCopyWith<_$PokemonListUiStateImpl> get copyWith =>
      __$$PokemonListUiStateImplCopyWithImpl<_$PokemonListUiStateImpl>(
          this, _$identity);
}

abstract class _PokemonListUiState implements PokemonListUiState {
  const factory _PokemonListUiState(
      {final bool isLoading,
      final List<Pokemon> pokemonList}) = _$PokemonListUiStateImpl;

  @override
  bool get isLoading;
  @override
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListUiStateImplCopyWith<_$PokemonListUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonListAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function(Pokemon pokemon) itemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function(Pokemon pokemon)? itemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function(Pokemon pokemon)? itemClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(ItemClicked value) itemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(ItemClicked value)? itemClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(ItemClicked value)? itemClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListActionCopyWith<$Res> {
  factory $PokemonListActionCopyWith(
          PokemonListAction value, $Res Function(PokemonListAction) then) =
      _$PokemonListActionCopyWithImpl<$Res, PokemonListAction>;
}

/// @nodoc
class _$PokemonListActionCopyWithImpl<$Res, $Val extends PokemonListAction>
    implements $PokemonListActionCopyWith<$Res> {
  _$PokemonListActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAppearImplCopyWith<$Res> {
  factory _$$OnAppearImplCopyWith(
          _$OnAppearImpl value, $Res Function(_$OnAppearImpl) then) =
      __$$OnAppearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAppearImplCopyWithImpl<$Res>
    extends _$PokemonListActionCopyWithImpl<$Res, _$OnAppearImpl>
    implements _$$OnAppearImplCopyWith<$Res> {
  __$$OnAppearImplCopyWithImpl(
      _$OnAppearImpl _value, $Res Function(_$OnAppearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAppearImpl implements OnAppear {
  const _$OnAppearImpl();

  @override
  String toString() {
    return 'PokemonListAction.onAppear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAppearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function(Pokemon pokemon) itemClicked,
  }) {
    return onAppear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function(Pokemon pokemon)? itemClicked,
  }) {
    return onAppear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function(Pokemon pokemon)? itemClicked,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(ItemClicked value) itemClicked,
  }) {
    return onAppear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(ItemClicked value)? itemClicked,
  }) {
    return onAppear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(ItemClicked value)? itemClicked,
    required TResult orElse(),
  }) {
    if (onAppear != null) {
      return onAppear(this);
    }
    return orElse();
  }
}

abstract class OnAppear implements PokemonListAction {
  const factory OnAppear() = _$OnAppearImpl;
}

/// @nodoc
abstract class _$$ItemClickedImplCopyWith<$Res> {
  factory _$$ItemClickedImplCopyWith(
          _$ItemClickedImpl value, $Res Function(_$ItemClickedImpl) then) =
      __$$ItemClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Pokemon pokemon});

  $PokemonCopyWith<$Res> get pokemon;
}

/// @nodoc
class __$$ItemClickedImplCopyWithImpl<$Res>
    extends _$PokemonListActionCopyWithImpl<$Res, _$ItemClickedImpl>
    implements _$$ItemClickedImplCopyWith<$Res> {
  __$$ItemClickedImplCopyWithImpl(
      _$ItemClickedImpl _value, $Res Function(_$ItemClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_$ItemClickedImpl(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res> get pokemon {
    return $PokemonCopyWith<$Res>(_value.pokemon, (value) {
      return _then(_value.copyWith(pokemon: value));
    });
  }
}

/// @nodoc

class _$ItemClickedImpl implements ItemClicked {
  const _$ItemClickedImpl({required this.pokemon});

  @override
  final Pokemon pokemon;

  @override
  String toString() {
    return 'PokemonListAction.itemClicked(pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemClickedImpl &&
            (identical(other.pokemon, pokemon) || other.pokemon == pokemon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemClickedImplCopyWith<_$ItemClickedImpl> get copyWith =>
      __$$ItemClickedImplCopyWithImpl<_$ItemClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppear,
    required TResult Function(Pokemon pokemon) itemClicked,
  }) {
    return itemClicked(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppear,
    TResult? Function(Pokemon pokemon)? itemClicked,
  }) {
    return itemClicked?.call(pokemon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppear,
    TResult Function(Pokemon pokemon)? itemClicked,
    required TResult orElse(),
  }) {
    if (itemClicked != null) {
      return itemClicked(pokemon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAppear value) onAppear,
    required TResult Function(ItemClicked value) itemClicked,
  }) {
    return itemClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAppear value)? onAppear,
    TResult? Function(ItemClicked value)? itemClicked,
  }) {
    return itemClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAppear value)? onAppear,
    TResult Function(ItemClicked value)? itemClicked,
    required TResult orElse(),
  }) {
    if (itemClicked != null) {
      return itemClicked(this);
    }
    return orElse();
  }
}

abstract class ItemClicked implements PokemonListAction {
  const factory ItemClicked({required final Pokemon pokemon}) =
      _$ItemClickedImpl;

  Pokemon get pokemon;
  @JsonKey(ignore: true)
  _$$ItemClickedImplCopyWith<_$ItemClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonListEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int id) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(int id)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int id)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListEffectCopyWith<$Res> {
  factory $PokemonListEffectCopyWith(
          PokemonListEffect value, $Res Function(PokemonListEffect) then) =
      _$PokemonListEffectCopyWithImpl<$Res, PokemonListEffect>;
}

/// @nodoc
class _$PokemonListEffectCopyWithImpl<$Res, $Val extends PokemonListEffect>
    implements $PokemonListEffectCopyWith<$Res> {
  _$PokemonListEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$PokemonListEffectCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'PokemonListEffect.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int id) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(int id)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int id)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements PokemonListEffect {
  const factory None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$GoDetailImplCopyWith<$Res> {
  factory _$$GoDetailImplCopyWith(
          _$GoDetailImpl value, $Res Function(_$GoDetailImpl) then) =
      __$$GoDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GoDetailImplCopyWithImpl<$Res>
    extends _$PokemonListEffectCopyWithImpl<$Res, _$GoDetailImpl>
    implements _$$GoDetailImplCopyWith<$Res> {
  __$$GoDetailImplCopyWithImpl(
      _$GoDetailImpl _value, $Res Function(_$GoDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GoDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GoDetailImpl implements GoDetail {
  const _$GoDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'PokemonListEffect.goDetail(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoDetailImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoDetailImplCopyWith<_$GoDetailImpl> get copyWith =>
      __$$GoDetailImplCopyWithImpl<_$GoDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int id) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return goDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(int id)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return goDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int id)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (goDetail != null) {
      return goDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return goDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return goDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (goDetail != null) {
      return goDetail(this);
    }
    return orElse();
  }
}

abstract class GoDetail implements PokemonListEffect {
  const factory GoDetail({required final int id}) = _$GoDetailImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$GoDetailImplCopyWith<_$GoDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowAlertImplCopyWith<$Res> {
  factory _$$ShowAlertImplCopyWith(
          _$ShowAlertImpl value, $Res Function(_$ShowAlertImpl) then) =
      __$$ShowAlertImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertState state});

  $AlertStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$ShowAlertImplCopyWithImpl<$Res>
    extends _$PokemonListEffectCopyWithImpl<$Res, _$ShowAlertImpl>
    implements _$$ShowAlertImplCopyWith<$Res> {
  __$$ShowAlertImplCopyWithImpl(
      _$ShowAlertImpl _value, $Res Function(_$ShowAlertImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$ShowAlertImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AlertState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertStateCopyWith<$Res> get state {
    return $AlertStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$ShowAlertImpl implements ShowAlert {
  const _$ShowAlertImpl({required this.state});

  @override
  final AlertState state;

  @override
  String toString() {
    return 'PokemonListEffect.showAlert(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAlertImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      __$$ShowAlertImplCopyWithImpl<_$ShowAlertImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(int id) goDetail,
    required TResult Function(AlertState state) showAlert,
  }) {
    return showAlert(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(int id)? goDetail,
    TResult? Function(AlertState state)? showAlert,
  }) {
    return showAlert?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(int id)? goDetail,
    TResult Function(AlertState state)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(GoDetail value) goDetail,
    required TResult Function(ShowAlert value) showAlert,
  }) {
    return showAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(GoDetail value)? goDetail,
    TResult? Function(ShowAlert value)? showAlert,
  }) {
    return showAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(GoDetail value)? goDetail,
    TResult Function(ShowAlert value)? showAlert,
    required TResult orElse(),
  }) {
    if (showAlert != null) {
      return showAlert(this);
    }
    return orElse();
  }
}

abstract class ShowAlert implements PokemonListEffect {
  const factory ShowAlert({required final AlertState state}) = _$ShowAlertImpl;

  AlertState get state;
  @JsonKey(ignore: true)
  _$$ShowAlertImplCopyWith<_$ShowAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
