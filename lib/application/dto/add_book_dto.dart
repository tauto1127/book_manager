import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:flutter/material.dart';

@immutable
class AddBookDto {
  final String title;
  final String author;
  final BookIsbn isbn;
  final String publisher;
  final BookPage currentPage;
  final BookPage lastPage;

  const AddBookDto(
      {required this.title,
      required this.author,
      required this.isbn,
      required this.publisher,
      required this.currentPage,
      required this.lastPage});

  bool isValid() {
    return title.isNotEmpty &&
        author.isNotEmpty &&
        isbn.isValid() &&
        publisher.isNotEmpty &&
        currentPage.isValid() &&
        lastPage.isValid() &&
        currentPage.value <= lastPage.value;
  }
}
