import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class BookDto {
  final int id;
  final String title;
  final BookPage currentPage;
  final BookPage lastPage;
  final String? thumnail;
  final BookIsbn? isbn;
  final String? author;
  final String? publisher;

  const BookDto(
      {required this.id,
      required this.title,
      required this.currentPage,
      required this.lastPage,
      required this.thumnail,
      required this.isbn,
      required this.author,
      required this.publisher});

  factory BookDto.fromBook(Book book) {
    return BookDto(
      id: book.id,
      title: book.title,
      currentPage: book.currentPage,
      lastPage: book.lastPage,
      thumnail: book.thumnail,
      isbn: book.isbn,
      publisher: book.publisher,
      author: book.author,
    );
  }
}
