import 'package:auto_route/auto_route.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/view_model/current_reading_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

@RoutePage()
class AddEntryPage extends HookConsumerWidget {
  const AddEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final rawTime = useStream<int>(_stopWatchTimer.rawTime, initialData: 0);

    //useEffect(() {
    //  _stopWatchTimer.onStartTimer();
    //  return _stopWatchTimer.dispose;
    //}, const []);

    logger.i(ref.exists(currentReadingViewModelProvider));
    var state = ref.watch(currentReadingViewModelProvider);
    var stream = ref.watch(currentReadingViewModelProvider.notifier).stopWatchTimer.rawTime;
    final rawTime = useStream<int>(stream, initialData: 0);

    debugPrint("build");

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              style: const TextStyle(fontSize: 30),
              StopWatchTimer.getDisplayTime(rawTime.data ?? 0, milliSecond: false, hours: false),
            ),
            state.book != null
                ? Column(
                    children: [
                      Text(state.book!.title),
                      Text(state.book!.currentPage.toString()),
                      Text(state.book!.lastPage.toString()),
                    ],
                  )
                : Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      if (state.isTimerRunning) {
                        ref.read(currentReadingViewModelProvider.notifier).timerStop();
                      } else {
                        ref.read(currentReadingViewModelProvider.notifier).timerStart();
                      }
                    },
                    icon: const Icon(Icons.pause)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.stop))
              ],
            ),
            Text("読み始め：${state.startAt}"),
          ],
        ),
      ),
    );
  }
}
