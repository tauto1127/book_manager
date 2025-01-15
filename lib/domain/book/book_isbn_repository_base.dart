import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_detail.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:isbn/isbn.dart';

abstract class BookIsbnRepositoryBase {
  Future<BookDetail> getBookByIsbn(String isbn);
  Future<Uri> getThumnailByIsbn(BookIsbn isbn);
}
