import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:book_manager/util/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    @BookPageConverter() required BookPage currentPage,
    @BookPageConverter() required BookPage lastPage,
    String? thumnail,
    @BookIsbnConverter() BookIsbn? isbn,
    String? author,
    String? publisher,
    @DateTimeConverter() required DateTime created,
    @DateTimeConverter() required DateTime updated,
  }) = _Book;

  // copyWithなどをprivateにする
  const Book._();
  //final int id;
  //BookTitle title;
  //BookPage currentPage;
  //BookPage lastPage;

  Book updateCurrentPage(int newPage) {
    if (lastPage.value < newPage) {
      throw ArgumentError('New page cannot be greater than last page');
    }

    return copyWith(currentPage: BookPage(newPage));
  }

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
