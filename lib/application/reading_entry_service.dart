import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/domain/reading_entry/reading_entry_repository_base.dart';
import 'package:riverpod/riverpod.dart';

class ReadingEntryService {
  late ReadingEntryRepositoryBase _readingEntryRepositoryBase;
  late BookRepositoryBase _bookRepositoryBase;

  ReadingEntryService(ReadingEntryRepositoryBase readingEntryRepositoryBase, BookRepositoryBase bookRepositoryBase) {
    _readingEntryRepositoryBase = readingEntryRepositoryBase;
    _bookRepositoryBase = bookRepositoryBase;
  }
  Future<void> addReadingEntry(AddReadingEntryDto addReadingEntryDto) async {
    await _bookRepositoryBase.updateCurrentPage(addReadingEntryDto.bookId, addReadingEntryDto.currentPage);
    await _readingEntryRepositoryBase.addReadingEntry(addReadingEntryDto);
  }

  Future<Duration> getReadingEntryDurationInSeconds(int bookId) async {
    return Duration(seconds: await _readingEntryRepositoryBase.getReadingEntryDurationInSeconds(bookId));
  }
}

final readingEntryServiceProvider =
    Provider((Ref ref) => ReadingEntryService(ref.watch(readingEntryRepositoryProvider), ref.watch(bookRepositoryProvider)));
