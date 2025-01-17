import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/domain/reading_entry/reading_entry_repository_base.dart';
import 'package:riverpod/riverpod.dart';

class ReadingEntryService {
  late ReadingEntryRepositoryBase _readingEntryRepositoryBase;

  ReadingEntryService(ReadingEntryRepositoryBase readingEntryRepositoryBase) {
    _readingEntryRepositoryBase = readingEntryRepositoryBase;
  }
  Future<String> addReadingEntry(AddReadingEntryDto addReadingEntryDto) async {
    return await _readingEntryRepositoryBase.addReadingEntry(addReadingEntryDto);
  }
}

final readingEntryServiceProvider = Provider((Ref ref) => ReadingEntryService(ref.watch(readingEntryRepositoryProvider)));
