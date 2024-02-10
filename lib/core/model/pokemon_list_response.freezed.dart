// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) {
  return _PokemonListResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonListResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonListResultResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResponseCopyWith<PokemonListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseCopyWith<$Res> {
  factory $PokemonListResponseCopyWith(
          PokemonListResponse value, $Res Function(PokemonListResponse) then) =
      _$PokemonListResponseCopyWithImpl<$Res, PokemonListResponse>;
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonListResultResponse> results});
}

/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res, $Val extends PokemonListResponse>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListResultResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListResponseImplCopyWith<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  factory _$$PokemonListResponseImplCopyWith(_$PokemonListResponseImpl value,
          $Res Function(_$PokemonListResponseImpl) then) =
      __$$PokemonListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String? next,
      String? previous,
      List<PokemonListResultResponse> results});
}

/// @nodoc
class __$$PokemonListResponseImplCopyWithImpl<$Res>
    extends _$PokemonListResponseCopyWithImpl<$Res, _$PokemonListResponseImpl>
    implements _$$PokemonListResponseImplCopyWith<$Res> {
  __$$PokemonListResponseImplCopyWithImpl(_$PokemonListResponseImpl _value,
      $Res Function(_$PokemonListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokemonListResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonListResultResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListResponseImpl implements _PokemonListResponse {
  const _$PokemonListResponseImpl(
      {required this.count,
      this.next,
      this.previous,
      required final List<PokemonListResultResponse> results})
      : _results = results;

  factory _$PokemonListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonListResultResponse> _results;
  @override
  List<PokemonListResultResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokemonListResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      __$$PokemonListResponseImplCopyWithImpl<_$PokemonListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonListResponse implements PokemonListResponse {
  const factory _PokemonListResponse(
          {required final int count,
          final String? next,
          final String? previous,
          required final List<PokemonListResultResponse> results}) =
      _$PokemonListResponseImpl;

  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonListResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonListResultResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListResponseImplCopyWith<_$PokemonListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonListResultResponse _$PokemonListResultResponseFromJson(
    Map<String, dynamic> json) {
  return _PokemonListResultResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonListResultResponse {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResultResponseCopyWith<PokemonListResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResultResponseCopyWith<$Res> {
  factory $PokemonListResultResponseCopyWith(PokemonListResultResponse value,
          $Res Function(PokemonListResultResponse) then) =
      _$PokemonListResultResponseCopyWithImpl<$Res, PokemonListResultResponse>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonListResultResponseCopyWithImpl<$Res,
        $Val extends PokemonListResultResponse>
    implements $PokemonListResultResponseCopyWith<$Res> {
  _$PokemonListResultResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$PokemonListResultResponseImplCopyWith<$Res>
    implements $PokemonListResultResponseCopyWith<$Res> {
  factory _$$PokemonListResultResponseImplCopyWith(
          _$PokemonListResultResponseImpl value,
          $Res Function(_$PokemonListResultResponseImpl) then) =
      __$$PokemonListResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonListResultResponseImplCopyWithImpl<$Res>
    extends _$PokemonListResultResponseCopyWithImpl<$Res,
        _$PokemonListResultResponseImpl>
    implements _$$PokemonListResultResponseImplCopyWith<$Res> {
  __$$PokemonListResultResponseImplCopyWithImpl(
      _$PokemonListResultResponseImpl _value,
      $Res Function(_$PokemonListResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonListResultResponseImpl(
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
class _$PokemonListResultResponseImpl implements _PokemonListResultResponse {
  const _$PokemonListResultResponseImpl(
      {required this.name, required this.url});

  factory _$PokemonListResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListResultResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonListResultResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListResultResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListResultResponseImplCopyWith<_$PokemonListResultResponseImpl>
      get copyWith => __$$PokemonListResultResponseImplCopyWithImpl<
          _$PokemonListResultResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListResultResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonListResultResponse implements PokemonListResultResponse {
  const factory _PokemonListResultResponse(
      {required final String name,
      required final String url}) = _$PokemonListResultResponseImpl;

  factory _PokemonListResultResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonListResultResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListResultResponseImplCopyWith<_$PokemonListResultResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
