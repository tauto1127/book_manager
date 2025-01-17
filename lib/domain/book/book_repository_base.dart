import 'package:book_manager/application/dto/book/add_book_dto.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/infrastructure/book/book_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BookRepositoryBase {
  Future<List<Book>> getBooks();
  Future<String> addBook(AddBookDto book);
}

final bookRepositoryProvider = Provider((ref) => BookRestRepository());
