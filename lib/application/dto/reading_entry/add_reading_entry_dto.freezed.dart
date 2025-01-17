// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_reading_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddReadingEntryDto _$AddReadingEntryDtoFromJson(Map<String, dynamic> json) {
  return _AddReadingEntryDto.fromJson(json);
}

/// @nodoc
mixin _$AddReadingEntryDto {
  int get bookId => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get startAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get endAt => throw _privateConstructorUsedError;
  int get durationInSeconds => throw _privateConstructorUsedError;
  int get pageRead => throw _privateConstructorUsedError;

  /// Serializes this AddReadingEntryDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddReadingEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddReadingEntryDtoCopyWith<AddReadingEntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddReadingEntryDtoCopyWith<$Res> {
  factory $AddReadingEntryDtoCopyWith(
          AddReadingEntryDto value, $Res Function(AddReadingEntryDto) then) =
      _$AddReadingEntryDtoCopyWithImpl<$Res, AddReadingEntryDto>;
  @useResult
  $Res call(
      {int bookId,
      @DateTimeConverter() DateTime startAt,
      @DateTimeConverter() DateTime endAt,
      int durationInSeconds,
      int pageRead});
}

/// @nodoc
class _$AddReadingEntryDtoCopyWithImpl<$Res, $Val extends AddReadingEntryDto>
    implements $AddReadingEntryDtoCopyWith<$Res> {
  _$AddReadingEntryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddReadingEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? durationInSeconds = null,
    Object? pageRead = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInSeconds: null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      pageRead: null == pageRead
          ? _value.pageRead
          : pageRead // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddReadingEntryDtoImplCopyWith<$Res>
    implements $AddReadingEntryDtoCopyWith<$Res> {
  factory _$$AddReadingEntryDtoImplCopyWith(_$AddReadingEntryDtoImpl value,
          $Res Function(_$AddReadingEntryDtoImpl) then) =
      __$$AddReadingEntryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bookId,
      @DateTimeConverter() DateTime startAt,
      @DateTimeConverter() DateTime endAt,
      int durationInSeconds,
      int pageRead});
}

/// @nodoc
class __$$AddReadingEntryDtoImplCopyWithImpl<$Res>
    extends _$AddReadingEntryDtoCopyWithImpl<$Res, _$AddReadingEntryDtoImpl>
    implements _$$AddReadingEntryDtoImplCopyWith<$Res> {
  __$$AddReadingEntryDtoImplCopyWithImpl(_$AddReadingEntryDtoImpl _value,
      $Res Function(_$AddReadingEntryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddReadingEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? durationInSeconds = null,
    Object? pageRead = null,
  }) {
    return _then(_$AddReadingEntryDtoImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationInSeconds: null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      pageRead: null == pageRead
          ? _value.pageRead
          : pageRead // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddReadingEntryDtoImpl implements _AddReadingEntryDto {
  _$AddReadingEntryDtoImpl(
      {required this.bookId,
      @DateTimeConverter() required this.startAt,
      @DateTimeConverter() required this.endAt,
      required this.durationInSeconds,
      required this.pageRead});

  factory _$AddReadingEntryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddReadingEntryDtoImplFromJson(json);

  @override
  final int bookId;
  @override
  @DateTimeConverter()
  final DateTime startAt;
  @override
  @DateTimeConverter()
  final DateTime endAt;
  @override
  final int durationInSeconds;
  @override
  final int pageRead;

  @override
  String toString() {
    return 'AddReadingEntryDto(bookId: $bookId, startAt: $startAt, endAt: $endAt, durationInSeconds: $durationInSeconds, pageRead: $pageRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReadingEntryDtoImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds) &&
            (identical(other.pageRead, pageRead) ||
                other.pageRead == pageRead));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, bookId, startAt, endAt, durationInSeconds, pageRead);

  /// Create a copy of AddReadingEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReadingEntryDtoImplCopyWith<_$AddReadingEntryDtoImpl> get copyWith =>
      __$$AddReadingEntryDtoImplCopyWithImpl<_$AddReadingEntryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddReadingEntryDtoImplToJson(
      this,
    );
  }
}

abstract class _AddReadingEntryDto implements AddReadingEntryDto {
  factory _AddReadingEntryDto(
      {required final int bookId,
      @DateTimeConverter() required final DateTime startAt,
      @DateTimeConverter() required final DateTime endAt,
      required final int durationInSeconds,
      required final int pageRead}) = _$AddReadingEntryDtoImpl;

  factory _AddReadingEntryDto.fromJson(Map<String, dynamic> json) =
      _$AddReadingEntryDtoImpl.fromJson;

  @override
  int get bookId;
  @override
  @DateTimeConverter()
  DateTime get startAt;
  @override
  @DateTimeConverter()
  DateTime get endAt;
  @override
  int get durationInSeconds;
  @override
  int get pageRead;

  /// Create a copy of AddReadingEntryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReadingEntryDtoImplCopyWith<_$AddReadingEntryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
