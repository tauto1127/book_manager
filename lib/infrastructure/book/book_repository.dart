import 'dart:convert';

import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/generated/default.dart';
import 'package:book_manager/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

part 'book_repository.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:5001/book-manager-8934d/us-central1/api/book/')
abstract class BookFunctionsClient {
  factory BookFunctionsClient(Dio dio, {String baseUrl}) = _BookFunctionsClient;

  @GET('/all')
  Future<List<Book>> getBooks();

  @POST('/')
  Future<Book> addBook(@Body() Book book);
}

class BookRestRepository implements BookRepositoryBase {
  @override
  Future<Book> addBook(Book book) {
    throw UnimplementedError();
  }

  @override
  Future<List<Book>> getBooks() async {
    ListBooksVariablesBuilder queryRef = DefaultConnector.instance.listBooks();
    List<Book> books = [];
    var result = await queryRef.execute();

    result.data.books.forEach((element) {
      books.add(
        Book.fromJson(
          element.toJson(),
        ),
      );
    });

    // .then((value) async {
    //   value.data.books.forEach((element) {
    //     books.add(
    //       Book.fromJson(
    //         element.toJson(),
    //       ),
    //     );
    //     debugPrint(element.toString());
    //   });
    // });

    return books;
  }
}
