import 'package:book_manager/domain/book/book_detail.dart';
import 'package:book_manager/domain/book/book_isbn_repository_base.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/main.dart';

class AddBookService {
  final BookIsbnRepositoryBase _bookIsbnRepository;

  AddBookService(this._bookIsbnRepository);

  Future<Uri?> getThumnailByIsbn(BookIsbn isbn) async {
    try {
      var result = _bookIsbnRepository.getThumnailByIsbn(isbn);
      return result;
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  Future<BookDetail?> getBookByIsbn(String isbn) async {
    try {
      var result = _bookIsbnRepository.getBookByIsbn(isbn);
      return result;
    } catch (e) {
      logger.e(e);
      return const BookDetail(title: '', author: '', isbn: '', publisher: '');
    }
  }

  Future<void> addBook(BookDetail bookDetail) async {
    try {
      // Add book to repository
    } catch (e) {
      logger.e(e);
    }
  }
}
