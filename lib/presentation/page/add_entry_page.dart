import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

@RoutePage()
class AddEntryPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _stopWatchTimer = useMemoized(() => StopWatchTimer(refreshTime: 1000));

    final rawTime = useStream<int>(_stopWatchTimer.rawTime, initialData: 0);

    useEffect(() {
      _stopWatchTimer.onStartTimer();
      return _stopWatchTimer.dispose;
    }, const []);

    return Scaffold(
      appBar: AppBar(),
      body: Text(
        'Raw Time: ${StopWatchTimer.getDisplayTime(rawTime.data ?? 0)}',
      ),
    );
  }
}
