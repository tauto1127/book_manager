import 'package:auto_route/auto_route.dart';
import 'package:book_manager/application/book_app_service.dart';
import 'package:book_manager/application/dto/book/book_dto.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:book_manager/domain/book/book_repository_base.dart';
import 'package:book_manager/infrastructure/book/book_repository.dart';
import 'package:book_manager/main.dart';
import 'package:book_manager/presentation/page/developer_page.dart';
import 'package:book_manager/presentation/routes.gr.dart';
import 'package:book_manager/presentation/view_model/current_reading_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _incrementCounter() async {
    context.pushRoute(const DeveloperRoute());
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.pushRoute(BookListRoute());
              },
              icon: const Icon(Icons.list))
        ],
      ),
      body: Consumer(builder: (context, ref, _) {
        return FutureBuilder(
          builder: (context, AsyncSnapshot<List<BookDto>> snapshot) {
            return ListView.builder(
              itemBuilder: (context, i) {
                return ListTile(
                    title: Text(snapshot.data![i].title),
                    subtitle: Text("Page: ${snapshot.data![i].currentPage.value} / ${snapshot.data![i].lastPage.value}"),
                    onTap: () {},
                    leading:
                        snapshot.data![i].thumnail != null ? Image.network(snapshot.data![i].thumnail!.toString()) : const Icon(Icons.book),
                    trailing: IconButton(
                      icon: Icon(Icons.play_circle_fill),
                      onPressed: () async {
                        var listener = ref.listenManual(currentReadingViewModelProvider, (prev, next) {});
                        await ref.read(currentReadingViewModelProvider.notifier).start(snapshot.data![i]);
                        if (context.mounted) {
                          await context.pushRoute(const AddEntryRoute());
                        }
                        listener.close();
                      },
                    ));
              },
              itemCount: snapshot.data!.length,
            );
          },
          future: ref.watch(bookAppServiceProvider).getBooks(),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    context.pushRoute(
                      const AddBookRoute(),
                    );
                  },
                  icon: const Icon(Icons.add)),
              label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
