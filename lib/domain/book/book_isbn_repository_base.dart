import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_detail.dart';

abstract class BookIsbnRepositoryBase {
  Future<BookDetail> getBookByIsbn(String isbn);
  Future<Uri> getThumnailByIsbn(String isbn);
}
