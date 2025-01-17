import 'package:book_manager/util/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_reading_entry_dto.freezed.dart';
part 'add_reading_entry_dto.g.dart';

@freezed
class AddReadingEntryDto with _$AddReadingEntryDto {
  factory AddReadingEntryDto({
    required int bookId,
    @DateTimeConverter() required DateTime startAt,
    @DateTimeConverter() required DateTime endAt,
    required int durationInSeconds,
    required int pageRead,
  }) = _AddReadingEntryDto;

  //factory AddBookDto.fromJson(Map<String, dynamic> json) => _$AddBookDtoFromJson(json);
  factory AddReadingEntryDto.fromJson(Map<String, dynamic> json) => _$AddReadingEntryDtoFromJson(json);
}
