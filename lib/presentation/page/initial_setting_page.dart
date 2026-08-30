import 'package:auto_route/annotations.dart';
import 'package:book_manager/infrastructure/settings/repository/settings_repository.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/page/splash.dart';
import 'package:book_manager/presentation/routes.dart';
import 'package:book_manager/presentation/routes.gr.dart';
import 'package:book_manager/util/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class InitialSettingPage extends HookConsumerWidget {
  const InitialSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var anonKeyController = useTextEditingController();
    var urlController = useTextEditingController();
    return Scaffold(
        body: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(label: Text("anonKey")),
        ),
        TextFormField(
          decoration: InputDecoration(label: Text("url")),
        ),
        TextButton(
            onPressed: () async {
              await (await ref.read(settingsRepositoryProvider))
                  .updateAppSettings(AppSettings(anonKey: anonKeyController.text, url: urlController.text));
              router.replace(const SplashRoute());
            },
            child: const Text("確定"))
      ],
    ));
  }
}
