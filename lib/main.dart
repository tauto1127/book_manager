import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/generated/default.dart';
import 'package:book_manager/infrastructure/book/book_repository.dart';
import 'package:book_manager/presentation/routes.dart';
import 'package:dio/dio.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
// general imports
import 'package:firebase_data_connect/firebase_data_connect.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

final Logger logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // DefaultConnector.instance.dataConnect.useDataConnectEmulator('192.168.10.9', 9399);
  // await FirebaseAppCheck.instance.activate(
  //   appleProvider: kReleaseMode ? AppleProvider.deviceCheck : AppleProvider.debug,
  //   androidProvider: kReleaseMode ? AndroidProvider.playIntegrity : AndroidProvider.debug,
  // );
  await FirebaseAppCheck.instance.activate(
    appleProvider: AppleProvider.debug,
    androidProvider: AndroidProvider.debug,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
