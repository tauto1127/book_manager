import 'dart:convert';

import 'package:book_manager/application/dto/book/add_book_dto.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
    debugPrint(result.toString());
    for (var value in result) {
      books.add(Book.fromJson(value));
    }

    return books;
  }
}
