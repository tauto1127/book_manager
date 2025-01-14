import 'package:book_manager/domain/book/book.dart';
import 'package:retrofit/retrofit.dart';

@RestApi(baseUrl: "http://127.0.0.1:5001/book-manager-8934d/us-central1/")
abstract class BookRepositoryBase {
  @GET("/")
  Future<List<Book>> getBooks();
  Future<Book> addBook(Book book);
}
