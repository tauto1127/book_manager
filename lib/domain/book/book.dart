import 'package:book_manager/util/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    required int currentPage,
    required int lastPage,
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
    if (lastPage < newPage) {
      throw ArgumentError('New page cannot be greater than last page');
    }

    return copyWith(currentPage: newPage);
  }

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
