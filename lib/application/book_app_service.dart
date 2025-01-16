import 'package:book_manager/application/dto/add_book_dto.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookAppService {
  final BookRepositoryBase _bookRepository;

  BookAppService(this._bookRepository);

  Future<List<Book>> getBooks() async {
    return _bookRepository.getBooks();
  }

  Future<String> addBook(AddBookDto dto) async {
    return await _bookRepository.addBook(dto);
  }
}

final bookAppServiceProvider = Provider((ref) => BookAppService(ref.watch(bookRepositoryProvider)));
