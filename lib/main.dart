import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/infrastructure/book/book_repository.dart';
import 'package:book_manager/presentation/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
// general imports
import 'package:supabase_flutter/supabase_flutter.dart';

final Logger logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImloZHVjYm1yeHFxZGlnZndsdXB4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY5NDMwMjMsImV4cCI6MjA1MjUxOTAyM30.NU1iFCVs1kt0cOd_R7pE79tMg9mGWaD1_qGjWMjA-L0',
      url: 'https://ihducbmrxqqdigfwlupx.supabase.co');
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
