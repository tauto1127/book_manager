import 'package:auto_route/auto_route.dart';
import 'package:book_manager/application/dto/book/book_dto.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:book_manager/domain/reading_entry/reading_entry_repository_base.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/routes.gr.dart';
import 'package:book_manager/presentation/view_model/current_reading_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DeveloperPage extends ConsumerStatefulWidget {
  const DeveloperPage({super.key});

  @override
  ConsumerState<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends ConsumerState<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  await ref.watch(currentReadingViewModelProvider.notifier).start(BookDto(
                      id: 1,
                      title: "aiueo",
                      currentPage: BookPage(10),
                      lastPage: BookPage(200),
                      thumnail: null,
                      isbn: BookIsbn("99999999"),
                      author: null,
                      publisher: null));
                  if (context.mounted) {
                    context.replaceRoute(const AddEntryRoute());
                  } else {
                    logger.d("context is not mounted");
                  }
                },
                child: const Text("add entry")),
            TextButton(
                child: const Text("合計時間"),
                onPressed: () async {
                  await ref.read(readingEntryRepositoryProvider).getReadingEntryDurationInSeconds(3);
                })
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    logger.d("initState");
    super.initState();
  }
}
