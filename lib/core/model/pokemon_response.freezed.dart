// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PokemonSpritesResponse get sprites => throw _privateConstructorUsedError;
  List<PokemonTypeResponse> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res, PokemonResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      PokemonSpritesResponse sprites,
      List<PokemonTypeResponse> types});

  $PokemonSpritesResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res, $Val extends PokemonResponse>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesResponse,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesResponseCopyWith<$Res> get sprites {
    return $PokemonSpritesResponseCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonResponseImplCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$$PokemonResponseImplCopyWith(_$PokemonResponseImpl value,
          $Res Function(_$PokemonResponseImpl) then) =
      __$$PokemonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      PokemonSpritesResponse sprites,
      List<PokemonTypeResponse> types});

  @override
  $PokemonSpritesResponseCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonResponseImplCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res, _$PokemonResponseImpl>
    implements _$$PokemonResponseImplCopyWith<$Res> {
  __$$PokemonResponseImplCopyWithImpl(
      _$PokemonResponseImpl _value, $Res Function(_$PokemonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sprites = null,
    Object? types = null,
  }) {
    return _then(_$PokemonResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as PokemonSpritesResponse,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResponseImpl implements _PokemonResponse {
  const _$PokemonResponseImpl(
      {required this.id,
      required this.name,
      required this.sprites,
      required final List<PokemonTypeResponse> types})
      : _types = types;

  factory _$PokemonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final PokemonSpritesResponse sprites;
  final List<PokemonTypeResponse> _types;
  @override
  List<PokemonTypeResponse> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonResponse(id: $id, name: $name, sprites: $sprites, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sprites, sprites) || other.sprites == sprites) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, sprites,
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      __$$PokemonResponseImplCopyWithImpl<_$PokemonResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonResponse implements PokemonResponse {
  const factory _PokemonResponse(
      {required final int id,
      required final String name,
      required final PokemonSpritesResponse sprites,
      required final List<PokemonTypeResponse> types}) = _$PokemonResponseImpl;

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  PokemonSpritesResponse get sprites;
  @override
  List<PokemonTypeResponse> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpritesResponse _$PokemonSpritesResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpritesResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesResponse {
  String get frontDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpritesResponseCopyWith<PokemonSpritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesResponseCopyWith<$Res> {
  factory $PokemonSpritesResponseCopyWith(PokemonSpritesResponse value,
          $Res Function(PokemonSpritesResponse) then) =
      _$PokemonSpritesResponseCopyWithImpl<$Res, PokemonSpritesResponse>;
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class _$PokemonSpritesResponseCopyWithImpl<$Res,
        $Val extends PokemonSpritesResponse>
    implements $PokemonSpritesResponseCopyWith<$Res> {
  _$PokemonSpritesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpritesResponseImplCopyWith<$Res>
    implements $PokemonSpritesResponseCopyWith<$Res> {
  factory _$$PokemonSpritesResponseImplCopyWith(
          _$PokemonSpritesResponseImpl value,
          $Res Function(_$PokemonSpritesResponseImpl) then) =
      __$$PokemonSpritesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault});
}

/// @nodoc
class __$$PokemonSpritesResponseImplCopyWithImpl<$Res>
    extends _$PokemonSpritesResponseCopyWithImpl<$Res,
        _$PokemonSpritesResponseImpl>
    implements _$$PokemonSpritesResponseImplCopyWith<$Res> {
  __$$PokemonSpritesResponseImplCopyWithImpl(
      _$PokemonSpritesResponseImpl _value,
      $Res Function(_$PokemonSpritesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
  }) {
    return _then(_$PokemonSpritesResponseImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PokemonSpritesResponseImpl implements _PokemonSpritesResponse {
  const _$PokemonSpritesResponseImpl({required this.frontDefault});

  factory _$PokemonSpritesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesResponseImplFromJson(json);

  @override
  final String frontDefault;

  @override
  String toString() {
    return 'PokemonSpritesResponse(frontDefault: $frontDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesResponseImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesResponseImplCopyWith<_$PokemonSpritesResponseImpl>
      get copyWith => __$$PokemonSpritesResponseImplCopyWithImpl<
          _$PokemonSpritesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpritesResponse implements PokemonSpritesResponse {
  const factory _PokemonSpritesResponse({required final String frontDefault}) =
      _$PokemonSpritesResponseImpl;

  factory _PokemonSpritesResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesResponseImpl.fromJson;

  @override
  String get frontDefault;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpritesResponseImplCopyWith<_$PokemonSpritesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonTypeResponse _$PokemonTypeResponseFromJson(Map<String, dynamic> json) {
  return _PokemonTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeResponse {
  int get slot => throw _privateConstructorUsedError;
  PokemonTypeTypeResponse get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeResponseCopyWith<PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeResponseCopyWith<$Res> {
  factory $PokemonTypeResponseCopyWith(
          PokemonTypeResponse value, $Res Function(PokemonTypeResponse) then) =
      _$PokemonTypeResponseCopyWithImpl<$Res, PokemonTypeResponse>;
  @useResult
  $Res call({int slot, PokemonTypeTypeResponse type});

  $PokemonTypeTypeResponseCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeResponseCopyWithImpl<$Res, $Val extends PokemonTypeResponse>
    implements $PokemonTypeResponseCopyWith<$Res> {
  _$PokemonTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeTypeResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeTypeResponseCopyWith<$Res> get type {
    return $PokemonTypeTypeResponseCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeResponseImplCopyWith<$Res>
    implements $PokemonTypeResponseCopyWith<$Res> {
  factory _$$PokemonTypeResponseImplCopyWith(_$PokemonTypeResponseImpl value,
          $Res Function(_$PokemonTypeResponseImpl) then) =
      __$$PokemonTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, PokemonTypeTypeResponse type});

  @override
  $PokemonTypeTypeResponseCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeResponseImplCopyWithImpl<$Res>
    extends _$PokemonTypeResponseCopyWithImpl<$Res, _$PokemonTypeResponseImpl>
    implements _$$PokemonTypeResponseImplCopyWith<$Res> {
  __$$PokemonTypeResponseImplCopyWithImpl(_$PokemonTypeResponseImpl _value,
      $Res Function(_$PokemonTypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeResponseImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PokemonTypeTypeResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeResponseImpl implements _PokemonTypeResponse {
  const _$PokemonTypeResponseImpl({required this.slot, required this.type});

  factory _$PokemonTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeResponseImplFromJson(json);

  @override
  final int slot;
  @override
  final PokemonTypeTypeResponse type;

  @override
  String toString() {
    return 'PokemonTypeResponse(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeResponseImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeResponseImplCopyWith<_$PokemonTypeResponseImpl> get copyWith =>
      __$$PokemonTypeResponseImplCopyWithImpl<_$PokemonTypeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeResponse implements PokemonTypeResponse {
  const factory _PokemonTypeResponse(
      {required final int slot,
      required final PokemonTypeTypeResponse type}) = _$PokemonTypeResponseImpl;

  factory _PokemonTypeResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeResponseImpl.fromJson;

  @override
  int get slot;
  @override
  PokemonTypeTypeResponse get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeResponseImplCopyWith<_$PokemonTypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeTypeResponse _$PokemonTypeTypeResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonTypeTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeTypeResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeTypeResponseCopyWith<PokemonTypeTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeTypeResponseCopyWith<$Res> {
  factory $PokemonTypeTypeResponseCopyWith(PokemonTypeTypeResponse value,
          $Res Function(PokemonTypeTypeResponse) then) =
      _$PokemonTypeTypeResponseCopyWithImpl<$Res, PokemonTypeTypeResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonTypeTypeResponseCopyWithImpl<$Res,
        $Val extends PokemonTypeTypeResponse>
    implements $PokemonTypeTypeResponseCopyWith<$Res> {
  _$PokemonTypeTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeTypeResponseImplCopyWith<$Res>
    implements $PokemonTypeTypeResponseCopyWith<$Res> {
  factory _$$PokemonTypeTypeResponseImplCopyWith(
          _$PokemonTypeTypeResponseImpl value,
          $Res Function(_$PokemonTypeTypeResponseImpl) then) =
      __$$PokemonTypeTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonTypeTypeResponseImplCopyWithImpl<$Res>
    extends _$PokemonTypeTypeResponseCopyWithImpl<$Res,
        _$PokemonTypeTypeResponseImpl>
    implements _$$PokemonTypeTypeResponseImplCopyWith<$Res> {
  __$$PokemonTypeTypeResponseImplCopyWithImpl(
      _$PokemonTypeTypeResponseImpl _value,
      $Res Function(_$PokemonTypeTypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonTypeTypeResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeTypeResponseImpl implements _PokemonTypeTypeResponse {
  const _$PokemonTypeTypeResponseImpl({required this.name, required this.url});

  factory _$PokemonTypeTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeTypeResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonTypeTypeResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeTypeResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeTypeResponseImplCopyWith<_$PokemonTypeTypeResponseImpl>
      get copyWith => __$$PokemonTypeTypeResponseImplCopyWithImpl<
          _$PokemonTypeTypeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeTypeResponse implements PokemonTypeTypeResponse {
  const factory _PokemonTypeTypeResponse(
      {required final String name,
      required final String url}) = _$PokemonTypeTypeResponseImpl;

  factory _PokemonTypeTypeResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeTypeResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeTypeResponseImplCopyWith<_$PokemonTypeTypeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
