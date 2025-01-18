// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_reading_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddReadingEntryDtoImpl _$$AddReadingEntryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReadingEntryDtoImpl(
      bookId: (json['bookId'] as num).toInt(),
      startAt: const DateTimeConverter().fromJson(json['startAt'] as String),
      endAt: const DateTimeConverter().fromJson(json['endAt'] as String),
      durationInSeconds: (json['durationInSeconds'] as num).toInt(),
      pageRead: (json['pageRead'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
    );

Map<String, dynamic> _$$AddReadingEntryDtoImplToJson(
        _$AddReadingEntryDtoImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'startAt': const DateTimeConverter().toJson(instance.startAt),
      'endAt': const DateTimeConverter().toJson(instance.endAt),
      'durationInSeconds': instance.durationInSeconds,
      'pageRead': instance.pageRead,
      'currentPage': instance.currentPage,
    };
