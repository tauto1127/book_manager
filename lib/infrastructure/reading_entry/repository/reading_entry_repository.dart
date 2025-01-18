import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/domain/reading_entry/reading_entry.dart';
import 'package:book_manager/domain/reading_entry/reading_entry_repository_base.dart';
import 'package:book_manager/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ReadingEntryRepository implements ReadingEntryRepositoryBase {
  @override
  Future<void> addReadingEntry(AddReadingEntryDto readingEntry) async {
    var result = await Supabase.instance.client.from('entry').insert(readingEntry.toJson());
  }

  @override
  Future<List<ReadingEntry>> getReadingEntries() {
    // TODO: implement getReadingEntries
    throw UnimplementedError();
  }

  @override
  Future<int> getReadingEntryDurationInSeconds(int bookId) async {
    // 関数名や引数名は小文字じゃないとダメらしい
    var result = await Supabase.instance.client.rpc("getreadingentrydurationsuminseconds", params: {"bookid": bookId});
//    var result = await Supabase.instance.client.rpc('''
//      SELECT SUM("durationInSeconds")
//FROM public.entry
//WHERE "bookId" = $bookId;''');
    return result;
  }

  //@override
  //Future<String> addBook(AddBookDto book) async {
  //  var result = await Supabase.instance.client.from('book').insert(book.toJson());
  //  //await Supabase.instance.client.from('book').insert(
  //  //)
  //  return result.toString();
  //}
  //
  //@override
  //Future<List<Book>> getBooks() async {
  //  List<Book> books = [];
  //
  //  var result = await Supabase.instance.client.from('book').select('*');
  //  debugPrint(result.toString());
  //  for (var value in result) {
  //    books.add(Book.fromJson(value));
  //  }
  //
  //  return books;
  //}
}
