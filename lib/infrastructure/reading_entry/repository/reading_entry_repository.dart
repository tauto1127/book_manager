import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/domain/reading_entry/reading_entry.dart';
import 'package:book_manager/domain/reading_entry/reading_entry_repository_base.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ReadingEntryRepository implements ReadingEntryRepositoryBase {
  @override
  Future<String> addReadingEntry(AddReadingEntryDto readingEntry) async {
    var result = await Supabase.instance.client.from('entry').insert(readingEntry.toJson());
    return result;
  }

  @override
  Future<List<ReadingEntry>> getReadingEntries() {
    // TODO: implement getReadingEntries
    throw UnimplementedError();
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
