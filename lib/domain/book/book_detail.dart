import 'package:flutter/foundation.dart';

@immutable
class BookDetail {
  final String title;
  final String author;
  final String isbn;
  final String publisher;

  const BookDetail({required this.title, required this.author, required this.isbn, required this.publisher});
}
