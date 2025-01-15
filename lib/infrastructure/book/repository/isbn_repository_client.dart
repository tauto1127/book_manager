import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'isbn_repository_client.g.dart';

@RestApi()
abstract class IsbnRepositoryClient {
  factory IsbnRepositoryClient(Dio dio, {String? baseUrl}) = _IsbnRepositoryClient;

  @GET('https://ndlsearch.ndl.go.jp/api/sru?operation=searchRetrieve&query=isbn={isbn}')
  Future<String> getBookByIsbn(@Path('isbn') String isbn);

  @GET('https://ndlsearch.ndl.go.jp/thumbnail/{isbn}.jpg')
  Future<String> getThumnailByIsbn(@Path('isbn') String isbn);
}

String getThumnailUrl(String isbn) => 'https://ndlsearch.ndl.go.jp/thumbnail/$isbn.jpg';
