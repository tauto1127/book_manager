// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      currentPage: const BookPageConverter()
          .fromJson((json['currentPage'] as num).toInt()),
      lastPage:
          const BookPageConverter().fromJson((json['lastPage'] as num).toInt()),
      thumnail: json['thumnail'] as String?,
      isbn: _$JsonConverterFromJson<String, BookIsbn>(
          json['isbn'], const BookIsbnConverter().fromJson),
      author: json['author'] as String?,
      publisher: json['publisher'] as String?,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'currentPage': const BookPageConverter().toJson(instance.currentPage),
      'lastPage': const BookPageConverter().toJson(instance.lastPage),
      'thumnail': instance.thumnail,
      'isbn': _$JsonConverterToJson<String, BookIsbn>(
          instance.isbn, const BookIsbnConverter().toJson),
      'author': instance.author,
      'publisher': instance.publisher,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
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
