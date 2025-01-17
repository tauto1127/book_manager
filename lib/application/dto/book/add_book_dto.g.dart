// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddBookDtoImpl _$$AddBookDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddBookDtoImpl(
      title: json['title'] as String,
      author: json['author'] as String?,
      isbn: _$JsonConverterFromJson<String, BookIsbn>(
          json['isbn'], const BookIsbnConverter().fromJson),
      publisher: json['publisher'] as String?,
      currentPage: const BookPageConverter()
          .fromJson((json['currentPage'] as num).toInt()),
      lastPage:
          const BookPageConverter().fromJson((json['lastPage'] as num).toInt()),
    );

Map<String, dynamic> _$$AddBookDtoImplToJson(_$AddBookDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'isbn': _$JsonConverterToJson<String, BookIsbn>(
          instance.isbn, const BookIsbnConverter().toJson),
      'publisher': instance.publisher,
      'currentPage': const BookPageConverter().toJson(instance.currentPage),
      'lastPage': const BookPageConverter().toJson(instance.lastPage),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
