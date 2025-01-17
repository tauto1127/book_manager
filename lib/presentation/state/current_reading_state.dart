import 'package:book_manager/application/dto/book/book_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'current_reading_state.freezed.dart';

@freezed
class CurrentReadingState with _$CurrentReadingState {
  const factory CurrentReadingState({BookDto? book, @Default(true) isTimerRunning, required DateTime startAt}) = _CurrentReadingState;
}
