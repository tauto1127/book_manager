import 'package:book_manager/application/dto/book/add_book_dto.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BookRestRepository implements BookRepositoryBase {
  @override
  Future<String> addBook(AddBookDto book) async {
    var result = await Supabase.instance.client.from('book').insert(book.toJson());
    //await Supabase.instance.client.from('book').insert(
    //)
    return result.toString();
  }

  @override
  Future<List<Book>> getBooks() async {
    List<Book> books = [];

    var result = await Supabase.instance.client.from('book').select('*');
    for (var value in result) {
      books.add(Book.fromJson(value));
    }

    return books;
  }

  @override
  Future<void> updateCurrentPage(int bookId, int currentPage) async {
    await Supabase.instance.client.from('book').update({'currentPage': currentPage}).eq('id', bookId);
  }

  @override
  Future<Book> getBookById(int bookId) async {
    //var book = Book.fromJson(await (Supabase.instance.client.from('book').select().eq('id', bookId)));
    var book = await (Supabase.instance.client.from('book').select().eq('id', bookId).limit(1));
    return Book.fromJson(book[0]);
  }
}
