// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      currentPage: (json['currentPage'] as num).toInt(),
      lastPage: (json['lastPage'] as num).toInt(),
      thumnail: json['thumnail'] as String?,
      isbn: json['isbn'] as String?,
      author: json['author'] as String?,
      publisher: json['publisher'] as String?,
      created: const DateTimeConverter().fromJson(json['created'] as String),
      updated: const DateTimeConverter().fromJson(json['updated'] as String),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'thumnail': instance.thumnail,
      'isbn': instance.isbn,
      'author': instance.author,
      'publisher': instance.publisher,
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
    };
