import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:book_manager/application/book_app_service.dart';
import 'package:book_manager/infrastructure/settings/repository/settings_repository.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/page/initial_setting_page.dart';
import 'package:book_manager/presentation/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  PageRouteInfo? page;
  @override
  Widget build(BuildContext context) {
    if (page != null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        context.router.replace(page!);
      });
    }

    return const Scaffold(body: CircularProgressIndicator());
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    var result = await (await ProviderContainer().read(settingsRepositoryProvider)).getAppSettings();
    if (result == null) {
      setState(() {
        page = const InitialSettingRoute();
      });
    } else {
      setState(() {
        page = const MyHomeRoute();
      });
    }
  }
}
