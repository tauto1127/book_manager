import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class ReadingEntryDto {
  final String id;
  final int bookid;
  final DateTime startAt;
  final DateTime endAt;
  final int durationInSeconds;
  final int pageRead;

  const ReadingEntryDto(
      {required this.id,
      required this.bookid,
      required this.startAt,
      required this.endAt,
      required this.durationInSeconds,
      required this.pageRead});
}
