import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_detail.dart';
import 'package:book_manager/domain/book/book_isbn_repository_base.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/infrastructure/book/repository/isbn_repository_client.dart';
import 'package:book_manager/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isbn/isbn.dart';
import 'package:xml/xml.dart';
import 'package:xml/xpath.dart';

class BookIsbnRepositoryByKokkai extends BookIsbnRepositoryBase {
  final IsbnRepositoryClient _isbnRepositoryClient;

  BookIsbnRepositoryByKokkai(this._isbnRepositoryClient);

  @override
  Future<BookDetail> getBookByIsbn(String isbn) async {
    String result =
        (await _isbnRepositoryClient.getBookByIsbn(isbn)).replaceAll('&lt;', '<').replaceAll('&gt;', '>').replaceAll('&amp;', '&');

    final document = XmlDocument.parse(result);

    logger.d(result);
    return BookDetail(
      title: document.findAllElements('dc:title').first.text,
      author: document.findAllElements('dc:creator').first.text,
      isbn: isbn,
      publisher: document.findAllElements('dc:publisher').first.text,
    );
  }

  @override
  Future<Uri> getThumnailByIsbn(BookIsbn isbn) async {
    var isbn13 = Isbn().toIsbn13(isbn.value);
    debugPrint(isbn13);
    try {
      _isbnRepositoryClient.getThumnailByIsbn(isbn13).then((value) => Uri.parse(value));
      return Uri.parse(getThumnailUrl(isbn13));
    } catch (e) {
      // ここでスタックトレース加えたいな
      rethrow;
    }
  }
}

final bookIsbnRepositoryProvider = Provider((ref) => BookIsbnRepositoryByKokkai(IsbnRepositoryClient(Dio())));
