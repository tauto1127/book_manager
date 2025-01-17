import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:book_manager/util/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_book_dto.freezed.dart';
part 'add_book_dto.g.dart';

@freezed
class AddBookDto with _$AddBookDto {
  const factory AddBookDto({
    required String title,
    String? author,
    @BookIsbnConverter() BookIsbn? isbn,
    String? publisher,
    @BookPageConverter() required BookPage currentPage,
    @BookPageConverter() required BookPage lastPage,
  }) = _AddBookDto;

  static bool isValid(AddBookDto value) {
    if (value.currentPage.value > value.lastPage.value || value.lastPage.value == 0) {
      return false;
    }
    if (value.title.isEmpty) {
      return false;
    }

    return true;
  }

  factory AddBookDto.fromJson(Map<String, dynamic> json) => _$AddBookDtoFromJson(json);
}
