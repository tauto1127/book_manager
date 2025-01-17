// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @BookPageConverter()
  BookPage get currentPage => throw _privateConstructorUsedError;
  @BookPageConverter()
  BookPage get lastPage => throw _privateConstructorUsedError;
  String? get thumnail => throw _privateConstructorUsedError;
  @BookIsbnConverter()
  BookIsbn? get isbn => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get created => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get updated => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {int id,
      String title,
      @BookPageConverter() BookPage currentPage,
      @BookPageConverter() BookPage lastPage,
      String? thumnail,
      @BookIsbnConverter() BookIsbn? isbn,
      String? author,
      String? publisher,
      @DateTimeConverter() DateTime created,
      @DateTimeConverter() DateTime updated});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? thumnail = freezed,
    Object? isbn = freezed,
    Object? author = freezed,
    Object? publisher = freezed,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      thumnail: freezed == thumnail
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as BookIsbn?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @BookPageConverter() BookPage currentPage,
      @BookPageConverter() BookPage lastPage,
      String? thumnail,
      @BookIsbnConverter() BookIsbn? isbn,
      String? author,
      String? publisher,
      @DateTimeConverter() DateTime created,
      @DateTimeConverter() DateTime updated});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? thumnail = freezed,
    Object? isbn = freezed,
    Object? author = freezed,
    Object? publisher = freezed,
    Object? created = null,
    Object? updated = null,
  }) {
    return _then(_$BookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as BookPage,
      thumnail: freezed == thumnail
          ? _value.thumnail
          : thumnail // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as BookIsbn?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl extends _Book {
  const _$BookImpl(
      {required this.id,
      required this.title,
      @BookPageConverter() required this.currentPage,
      @BookPageConverter() required this.lastPage,
      this.thumnail,
      @BookIsbnConverter() this.isbn,
      this.author,
      this.publisher,
      @DateTimeConverter() required this.created,
      @DateTimeConverter() required this.updated})
      : super._();

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @BookPageConverter()
  final BookPage currentPage;
  @override
  @BookPageConverter()
  final BookPage lastPage;
  @override
  final String? thumnail;
  @override
  @BookIsbnConverter()
  final BookIsbn? isbn;
  @override
  final String? author;
  @override
  final String? publisher;
  @override
  @DateTimeConverter()
  final DateTime created;
  @override
  @DateTimeConverter()
  final DateTime updated;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, currentPage: $currentPage, lastPage: $lastPage, thumnail: $thumnail, isbn: $isbn, author: $author, publisher: $publisher, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.thumnail, thumnail) ||
                other.thumnail == thumnail) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, currentPage, lastPage,
      thumnail, isbn, author, publisher, created, updated);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book extends Book {
  const factory _Book(
      {required final int id,
      required final String title,
      @BookPageConverter() required final BookPage currentPage,
      @BookPageConverter() required final BookPage lastPage,
      final String? thumnail,
      @BookIsbnConverter() final BookIsbn? isbn,
      final String? author,
      final String? publisher,
      @DateTimeConverter() required final DateTime created,
      @DateTimeConverter() required final DateTime updated}) = _$BookImpl;
  const _Book._() : super._();

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @BookPageConverter()
  BookPage get currentPage;
  @override
  @BookPageConverter()
  BookPage get lastPage;
  @override
  String? get thumnail;
  @override
  @BookIsbnConverter()
  BookIsbn? get isbn;
  @override
  String? get author;
  @override
  String? get publisher;
  @override
  @DateTimeConverter()
  DateTime get created;
  @override
  @DateTimeConverter()
  DateTime get updated;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
