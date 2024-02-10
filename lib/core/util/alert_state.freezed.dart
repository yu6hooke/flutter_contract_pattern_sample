// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AlertState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message, String positive)
        dialogState,
    required TResult Function() silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message, String positive)?
        dialogState,
    TResult? Function()? silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message, String positive)?
        dialogState,
    TResult Function()? silent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogState value) dialogState,
    required TResult Function(Silent value) silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogState value)? dialogState,
    TResult? Function(Silent value)? silent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogState value)? dialogState,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertStateCopyWith<$Res> {
  factory $AlertStateCopyWith(
          AlertState value, $Res Function(AlertState) then) =
      _$AlertStateCopyWithImpl<$Res, AlertState>;
}

/// @nodoc
class _$AlertStateCopyWithImpl<$Res, $Val extends AlertState>
    implements $AlertStateCopyWith<$Res> {
  _$AlertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DialogStateImplCopyWith<$Res> {
  factory _$$DialogStateImplCopyWith(
          _$DialogStateImpl value, $Res Function(_$DialogStateImpl) then) =
      __$$DialogStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? title, String message, String positive});
}

/// @nodoc
class __$$DialogStateImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$DialogStateImpl>
    implements _$$DialogStateImplCopyWith<$Res> {
  __$$DialogStateImplCopyWithImpl(
      _$DialogStateImpl _value, $Res Function(_$DialogStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = null,
    Object? positive = null,
  }) {
    return _then(_$DialogStateImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      positive: null == positive
          ? _value.positive
          : positive // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DialogStateImpl implements DialogState {
  const _$DialogStateImpl(
      {this.title, required this.message, this.positive = 'OK'});

  @override
  final String? title;
  @override
  final String message;
  @override
  @JsonKey()
  final String positive;

  @override
  String toString() {
    return 'AlertState.dialogState(title: $title, message: $message, positive: $positive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.positive, positive) ||
                other.positive == positive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message, positive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogStateImplCopyWith<_$DialogStateImpl> get copyWith =>
      __$$DialogStateImplCopyWithImpl<_$DialogStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message, String positive)
        dialogState,
    required TResult Function() silent,
  }) {
    return dialogState(title, message, positive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message, String positive)?
        dialogState,
    TResult? Function()? silent,
  }) {
    return dialogState?.call(title, message, positive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message, String positive)?
        dialogState,
    TResult Function()? silent,
    required TResult orElse(),
  }) {
    if (dialogState != null) {
      return dialogState(title, message, positive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogState value) dialogState,
    required TResult Function(Silent value) silent,
  }) {
    return dialogState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogState value)? dialogState,
    TResult? Function(Silent value)? silent,
  }) {
    return dialogState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogState value)? dialogState,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) {
    if (dialogState != null) {
      return dialogState(this);
    }
    return orElse();
  }
}

abstract class DialogState implements AlertState {
  const factory DialogState(
      {final String? title,
      required final String message,
      final String positive}) = _$DialogStateImpl;

  String? get title;
  String get message;
  String get positive;
  @JsonKey(ignore: true)
  _$$DialogStateImplCopyWith<_$DialogStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SilentImplCopyWith<$Res> {
  factory _$$SilentImplCopyWith(
          _$SilentImpl value, $Res Function(_$SilentImpl) then) =
      __$$SilentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SilentImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$SilentImpl>
    implements _$$SilentImplCopyWith<$Res> {
  __$$SilentImplCopyWithImpl(
      _$SilentImpl _value, $Res Function(_$SilentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SilentImpl implements Silent {
  const _$SilentImpl();

  @override
  String toString() {
    return 'AlertState.silent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SilentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? title, String message, String positive)
        dialogState,
    required TResult Function() silent,
  }) {
    return silent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? title, String message, String positive)?
        dialogState,
    TResult? Function()? silent,
  }) {
    return silent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? title, String message, String positive)?
        dialogState,
    TResult Function()? silent,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DialogState value) dialogState,
    required TResult Function(Silent value) silent,
  }) {
    return silent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DialogState value)? dialogState,
    TResult? Function(Silent value)? silent,
  }) {
    return silent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DialogState value)? dialogState,
    TResult Function(Silent value)? silent,
    required TResult orElse(),
  }) {
    if (silent != null) {
      return silent(this);
    }
    return orElse();
  }
}

abstract class Silent implements AlertState {
  const factory Silent() = _$SilentImpl;
}
