import 'package:auto_route/auto_route.dart';
import 'package:book_manager/application/dto/reading_entry/add_reading_entry_dto.dart';
import 'package:book_manager/application/reading_entry_service.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/page/home.dart';
import 'package:book_manager/presentation/routes.gr.dart';
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

    var state = ref.watch(currentReadingViewModelProvider);
    var stream = ref.watch(currentReadingViewModelProvider.notifier).stopWatchTimer.rawTime;
    final rawTime = useStream<int>(stream, initialData: 0);

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
                IconButton(
                    onPressed: () {
                      ref.read(currentReadingViewModelProvider.notifier).timerStop();
                      final endAt = DateTime.now();
                      showDialog(
                          context: context,
                          builder: (context) {
                            var pageController = TextEditingController(text: state.book!.currentPage.toString());
                            return Scaffold(
                                backgroundColor: Colors.transparent,
                                body: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                              ref.read(currentReadingViewModelProvider.notifier).timerStart();
                                            },
                                            child: const Text("キャンセルする")),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: TextFormField(
                                                controller: pageController,
                                                validator: (String? value) {
                                                  if (value == null || value.isEmpty || int.tryParse(value) == null) {
                                                    return '数字を入力してください';
                                                  } else if (int.parse(value) > state.book!.lastPage.value) {
                                                    return '最終ページより大きい値は入力できません';
                                                  } else if (int.parse(value) < state.book!.currentPage.value) {
                                                    return '現在のページより小さい値は入力できません';
                                                  } else if (int.parse(value) < 0) {
                                                    return '0より小さい値は入力できません';
                                                  }
                                                  return null;
                                                },
                                                autovalidateMode: AutovalidateMode.always,
                                                decoration: const InputDecoration(labelText: "何ページまで読みましたか？"),
                                              ),
                                            )
                                          ],
                                        ),
                                        TextButton(onPressed: () => router.popUntilRoot(), child: const Text("このセッションを保存しない")),
                                        TextButton(
                                          onPressed: () {
                                            final page = int.parse(pageController.text);
                                            ref.read(readingEntryServiceProvider).addReadingEntry(AddReadingEntryDto(
                                                bookId: state.book!.id,
                                                startAt: state.startAt,
                                                endAt: endAt,
                                                durationInSeconds: int.parse(StopWatchTimer.getDisplayTime(rawTime.data ?? 0,
                                                    milliSecond: false, hours: false, minute: false, second: true)),
                                                pageRead: page - state.book!.currentPage.value,
                                                currentPage: page));
                                            router.popUntilRoot();
                                          },
                                          child: const Text("決定する"),
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                          });
                    },
                    icon: const Icon(Icons.stop)),
              ],
            ),
            Text("読み始め：${state.startAt}"),
          ],
        ),
      ),
    );
  }
}
