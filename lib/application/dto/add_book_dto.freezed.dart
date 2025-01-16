// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddBookDto _$AddBookDtoFromJson(Map<String, dynamic> json) {
  return _AddBookDto.fromJson(json);
}

/// @nodoc
mixin _$AddBookDto {
  String get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  @BookIsbnConverter()
  BookIsbn? get isbn => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  @BookPageConverter()
  BookPage get currentPage => throw _privateConstructorUsedError;
  @BookPageConverter()
  BookPage get lastPage => throw _privateConstructorUsedError;

  /// Serializes this AddBookDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddBookDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddBookDtoCopyWith<AddBookDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBookDtoCopyWith<$Res> {
  factory $AddBookDtoCopyWith(
          AddBookDto value, $Res Function(AddBookDto) then) =
      _$AddBookDtoCopyWithImpl<$Res, AddBookDto>;
  @useResult
  $Res call(
      {String title,
      String? author,
      @BookIsbnConverter() BookIsbn? isbn,
      String? publisher,
      @BookPageConverter() BookPage currentPage,
      @BookPageConverter() BookPage lastPage});
}

/// @nodoc
class _$AddBookDtoCopyWithImpl<$Res, $Val extends AddBookDto>
    implements $AddBookDtoCopyWith<$Res> {
  _$AddBookDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddBookDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? publisher = freezed,
    Object? currentPage = null,
    Object? lastPage = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as BookIsbn?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBookDtoImplCopyWith<$Res>
    implements $AddBookDtoCopyWith<$Res> {
  factory _$$AddBookDtoImplCopyWith(
          _$AddBookDtoImpl value, $Res Function(_$AddBookDtoImpl) then) =
      __$$AddBookDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? author,
      @BookIsbnConverter() BookIsbn? isbn,
      String? publisher,
      @BookPageConverter() BookPage currentPage,
      @BookPageConverter() BookPage lastPage});
}

/// @nodoc
class __$$AddBookDtoImplCopyWithImpl<$Res>
    extends _$AddBookDtoCopyWithImpl<$Res, _$AddBookDtoImpl>
    implements _$$AddBookDtoImplCopyWith<$Res> {
  __$$AddBookDtoImplCopyWithImpl(
      _$AddBookDtoImpl _value, $Res Function(_$AddBookDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddBookDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = freezed,
    Object? isbn = freezed,
    Object? publisher = freezed,
    Object? currentPage = null,
    Object? lastPage = null,
  }) {
    return _then(_$AddBookDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as BookIsbn?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBookDtoImpl implements _AddBookDto {
  const _$AddBookDtoImpl(
      {required this.title,
      this.author,
      @BookIsbnConverter() this.isbn,
      this.publisher,
      @BookPageConverter() required this.currentPage,
      @BookPageConverter() required this.lastPage});

  factory _$AddBookDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBookDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String? author;
  @override
  @BookIsbnConverter()
  final BookIsbn? isbn;
  @override
  final String? publisher;
  @override
  @BookPageConverter()
  final BookPage currentPage;
  @override
  @BookPageConverter()
  final BookPage lastPage;

  @override
  String toString() {
    return 'AddBookDto(title: $title, author: $author, isbn: $isbn, publisher: $publisher, currentPage: $currentPage, lastPage: $lastPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBookDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, author, isbn, publisher, currentPage, lastPage);

  /// Create a copy of AddBookDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBookDtoImplCopyWith<_$AddBookDtoImpl> get copyWith =>
      __$$AddBookDtoImplCopyWithImpl<_$AddBookDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBookDtoImplToJson(
      this,
    );
  }
}

abstract class _AddBookDto implements AddBookDto {
  const factory _AddBookDto(
          {required final String title,
          final String? author,
          @BookIsbnConverter() final BookIsbn? isbn,
          final String? publisher,
          @BookPageConverter() required final BookPage currentPage,
          @BookPageConverter() required final BookPage lastPage}) =
      _$AddBookDtoImpl;

  factory _AddBookDto.fromJson(Map<String, dynamic> json) =
      _$AddBookDtoImpl.fromJson;

  @override
  String get title;
  @override
  String? get author;
  @override
  @BookIsbnConverter()
  BookIsbn? get isbn;
  @override
  String? get publisher;
  @override
  @BookPageConverter()
  BookPage get currentPage;
  @override
  @BookPageConverter()
  BookPage get lastPage;

  /// Create a copy of AddBookDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBookDtoImplCopyWith<_$AddBookDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
