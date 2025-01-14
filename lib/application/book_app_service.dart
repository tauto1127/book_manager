import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';

class BookAppService {
  final BookRepositoryBase _bookRepository;

  BookAppService(this._bookRepository);

  Future<List<Book>> getBooks() async {
    return _bookRepository.getBooks();
  }
}
