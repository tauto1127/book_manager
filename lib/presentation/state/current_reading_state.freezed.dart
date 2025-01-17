// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_reading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentReadingState {
  BookDto? get book => throw _privateConstructorUsedError;

  /// Create a copy of CurrentReadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentReadingStateCopyWith<CurrentReadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentReadingStateCopyWith<$Res> {
  factory $CurrentReadingStateCopyWith(
          CurrentReadingState value, $Res Function(CurrentReadingState) then) =
      _$CurrentReadingStateCopyWithImpl<$Res, CurrentReadingState>;
  @useResult
  $Res call({BookDto? book});
}

/// @nodoc
class _$CurrentReadingStateCopyWithImpl<$Res, $Val extends CurrentReadingState>
    implements $CurrentReadingStateCopyWith<$Res> {
  _$CurrentReadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentReadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookDto?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentReadingStateImplCopyWith<$Res>
    implements $CurrentReadingStateCopyWith<$Res> {
  factory _$$CurrentReadingStateImplCopyWith(_$CurrentReadingStateImpl value,
          $Res Function(_$CurrentReadingStateImpl) then) =
      __$$CurrentReadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookDto? book});
}

/// @nodoc
class __$$CurrentReadingStateImplCopyWithImpl<$Res>
    extends _$CurrentReadingStateCopyWithImpl<$Res, _$CurrentReadingStateImpl>
    implements _$$CurrentReadingStateImplCopyWith<$Res> {
  __$$CurrentReadingStateImplCopyWithImpl(_$CurrentReadingStateImpl _value,
      $Res Function(_$CurrentReadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentReadingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_$CurrentReadingStateImpl(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookDto?,
    ));
  }
}

/// @nodoc

class _$CurrentReadingStateImpl implements _CurrentReadingState {
  const _$CurrentReadingStateImpl({this.book});

  @override
  final BookDto? book;

  @override
  String toString() {
    return 'CurrentReadingState(book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentReadingStateImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  /// Create a copy of CurrentReadingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentReadingStateImplCopyWith<_$CurrentReadingStateImpl> get copyWith =>
      __$$CurrentReadingStateImplCopyWithImpl<_$CurrentReadingStateImpl>(
          this, _$identity);
}

abstract class _CurrentReadingState implements CurrentReadingState {
  const factory _CurrentReadingState({final BookDto? book}) =
      _$CurrentReadingStateImpl;

  @override
  BookDto? get book;

  /// Create a copy of CurrentReadingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentReadingStateImplCopyWith<_$CurrentReadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
