import 'package:book_manager/domain/book/book_detail.dart';
import 'package:book_manager/domain/book/book_isbn_repository_base.dart';

class BookIsbnRepositoryByKokkai extends BookIsbnRepositoryBase {
  @override
  Future<BookDetail> getBookByIsbn(String isbn) {
    // TODO: implement getBookByIsbn
    throw UnimplementedError();
  }

  @override
  Future<Uri> getThumnailByIsbn(String isbn) {
    // TODO: implement getThumnailByIsbn
    throw UnimplementedError();
  }
}
