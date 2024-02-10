// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailUiState {
  Pokemon? get item => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailUiStateCopyWith<PokemonDetailUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailUiStateCopyWith<$Res> {
  factory $PokemonDetailUiStateCopyWith(PokemonDetailUiState value,
          $Res Function(PokemonDetailUiState) then) =
      _$PokemonDetailUiStateCopyWithImpl<$Res, PokemonDetailUiState>;
  @useResult
  $Res call({Pokemon? item});

  $PokemonCopyWith<$Res>? get item;
}

/// @nodoc
class _$PokemonDetailUiStateCopyWithImpl<$Res,
        $Val extends PokemonDetailUiState>
    implements $PokemonDetailUiStateCopyWith<$Res> {
  _$PokemonDetailUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailUiStateImplCopyWith<$Res>
    implements $PokemonDetailUiStateCopyWith<$Res> {
  factory _$$PokemonDetailUiStateImplCopyWith(_$PokemonDetailUiStateImpl value,
          $Res Function(_$PokemonDetailUiStateImpl) then) =
      __$$PokemonDetailUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pokemon? item});

  @override
  $PokemonCopyWith<$Res>? get item;
}

/// @nodoc
class __$$PokemonDetailUiStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailUiStateCopyWithImpl<$Res, _$PokemonDetailUiStateImpl>
    implements _$$PokemonDetailUiStateImplCopyWith<$Res> {
  __$$PokemonDetailUiStateImplCopyWithImpl(_$PokemonDetailUiStateImpl _value,
      $Res Function(_$PokemonDetailUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$PokemonDetailUiStateImpl(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
    ));
  }
}

/// @nodoc

class _$PokemonDetailUiStateImpl implements _PokemonDetailUiState {
  const _$PokemonDetailUiStateImpl({this.item});

  @override
  final Pokemon? item;

  @override
  String toString() {
    return 'PokemonDetailUiState(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailUiStateImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailUiStateImplCopyWith<_$PokemonDetailUiStateImpl>
      get copyWith =>
          __$$PokemonDetailUiStateImplCopyWithImpl<_$PokemonDetailUiStateImpl>(
              this, _$identity);
}

abstract class _PokemonDetailUiState implements PokemonDetailUiState {
  const factory _PokemonDetailUiState({final Pokemon? item}) =
      _$PokemonDetailUiStateImpl;

  @override
  Pokemon? get item;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailUiStateImplCopyWith<_$PokemonDetailUiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonDetailAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() closeButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? closeButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? closeButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CloseButtonClicked value) closeButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CloseButtonClicked value)? closeButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CloseButtonClicked value)? closeButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailActionCopyWith<$Res> {
  factory $PokemonDetailActionCopyWith(
          PokemonDetailAction value, $Res Function(PokemonDetailAction) then) =
      _$PokemonDetailActionCopyWithImpl<$Res, PokemonDetailAction>;
}

/// @nodoc
class _$PokemonDetailActionCopyWithImpl<$Res, $Val extends PokemonDetailAction>
    implements $PokemonDetailActionCopyWith<$Res> {
  _$PokemonDetailActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CloseButtonClickedImplCopyWith<$Res> {
  factory _$$CloseButtonClickedImplCopyWith(_$CloseButtonClickedImpl value,
          $Res Function(_$CloseButtonClickedImpl) then) =
      __$$CloseButtonClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseButtonClickedImplCopyWithImpl<$Res>
    extends _$PokemonDetailActionCopyWithImpl<$Res, _$CloseButtonClickedImpl>
    implements _$$CloseButtonClickedImplCopyWith<$Res> {
  __$$CloseButtonClickedImplCopyWithImpl(_$CloseButtonClickedImpl _value,
      $Res Function(_$CloseButtonClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseButtonClickedImpl implements CloseButtonClicked {
  const _$CloseButtonClickedImpl();

  @override
  String toString() {
    return 'PokemonDetailAction.closeButtonClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseButtonClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() closeButtonClicked,
  }) {
    return closeButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? closeButtonClicked,
  }) {
    return closeButtonClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? closeButtonClicked,
    required TResult orElse(),
  }) {
    if (closeButtonClicked != null) {
      return closeButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CloseButtonClicked value) closeButtonClicked,
  }) {
    return closeButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CloseButtonClicked value)? closeButtonClicked,
  }) {
    return closeButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CloseButtonClicked value)? closeButtonClicked,
    required TResult orElse(),
  }) {
    if (closeButtonClicked != null) {
      return closeButtonClicked(this);
    }
    return orElse();
  }
}

abstract class CloseButtonClicked implements PokemonDetailAction {
  const factory CloseButtonClicked() = _$CloseButtonClickedImpl;
}

/// @nodoc
mixin _$PokemonDetailEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(Close value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailEffectCopyWith<$Res> {
  factory $PokemonDetailEffectCopyWith(
          PokemonDetailEffect value, $Res Function(PokemonDetailEffect) then) =
      _$PokemonDetailEffectCopyWithImpl<$Res, PokemonDetailEffect>;
}

/// @nodoc
class _$PokemonDetailEffectCopyWithImpl<$Res, $Val extends PokemonDetailEffect>
    implements $PokemonDetailEffectCopyWith<$Res> {
  _$PokemonDetailEffectCopyWithImpl(this._value, this._then);

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
    extends _$PokemonDetailEffectCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'PokemonDetailEffect.none()';
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
    required TResult Function() close,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
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
    required TResult Function(Close value) close,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class None implements PokemonDetailEffect {
  const factory None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$PokemonDetailEffectCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseImpl implements Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'PokemonDetailEffect.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(None value) none,
    required TResult Function(Close value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(None value)? none,
    TResult? Function(Close value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(None value)? none,
    TResult Function(Close value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class Close implements PokemonDetailEffect {
  const factory Close() = _$CloseImpl;
}
