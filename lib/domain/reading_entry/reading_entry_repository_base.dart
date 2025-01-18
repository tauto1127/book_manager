import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/domain/reading_entry/reading_entry.dart';
import 'package:book_manager/infrastructure/reading_entry/repository/reading_entry_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class ReadingEntryRepositoryBase {
  Future<void> addReadingEntry(AddReadingEntryDto readingEntry);
  Future<List<ReadingEntry>> getReadingEntries();
  Future<int> getReadingEntryDurationInSeconds(int bookId);
}

final readingEntryRepositoryProvider = Provider((ref) => ReadingEntryRepository());
