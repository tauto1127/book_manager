import 'package:book_manager/application/dto/book/book_dto.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/state/current_reading_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

part 'current_reading_view_model.g.dart';

@Riverpod(keepAlive: false)
class CurrentReadingViewModel extends _$CurrentReadingViewModel {
  late StopWatchTimer stopWatchTimer;
  @override
  CurrentReadingState build() {
    stopWatchTimer = StopWatchTimer(refreshTime: 1000);
    ref.onDispose(() {
      stopWatchTimer.dispose;
      logger.d('current_reading_view_model disposed');
    });
    logger.d('current_reading_view_model created');

    return CurrentReadingState(startAt: DateTime.now());
  }

  Future<void> start(BookDto book) async {
    logger.i("start");
    state = state.copyWith(book: book);
    stopWatchTimer.onStartTimer();
  }

  void timerStop() {
    logger.i("stop");
    state = state.copyWith(isTimerRunning: false);
    stopWatchTimer.onStopTimer();
  }

  void timerStart() {
    state = state.copyWith(isTimerRunning: true);
    stopWatchTimer.onStartTimer();
  }
}
