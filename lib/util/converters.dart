import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toLocal().toString();
  }
}

class BookIsbnConverter implements JsonConverter<BookIsbn, String> {
  const BookIsbnConverter();

  @override
  BookIsbn fromJson(String json) {
    return BookIsbn(json);
  }

  @override
  String toJson(BookIsbn object) {
    return object.value;
  }
}

class BookPageConverter implements JsonConverter<BookPage, int> {
  const BookPageConverter();

  @override
  BookPage fromJson(int json) {
    return BookPage(json);
  }

  @override
  int toJson(BookPage object) {
    return object.value;
  }
}
