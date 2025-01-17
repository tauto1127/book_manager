import 'package:auto_route/auto_route.dart';
import 'package:book_manager/application/book_app_service.dart';
import 'package:book_manager/application/dto/book/add_book_dto.dart';
import 'package:book_manager/domain/book/value/book_isbn.dart';
import 'package:book_manager/domain/book/value/book_page.dart';
import 'package:book_manager/infrastructure/book/book_isbn_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class AddBookPage extends HookConsumerWidget {
  const AddBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var thumnailUrl = useState<Uri?>(null);
    var isbnController = useTextEditingController();

    var titleController = useTextEditingController();
    var authorController = useTextEditingController();
    var publisherController = useTextEditingController();
    var lastPageController = useTextEditingController(text: '0');
    var currentPageController = useTextEditingController(text: '0');

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            const Text('Add Book Page'),
            TextFormField(
              decoration: const InputDecoration(labelText: 'ISBN'),
              controller: isbnController,
            ),
            (thumnailUrl.value != null) ? Image.network(thumnailUrl.value?.toString() ?? '') : Container(),
            TextButton(
              onPressed: () async {
                if (BookIsbn.isIsbnValid(isbnController.text)) {
                  thumnailUrl.value = await ref.read(bookIsbnRepositoryProvider).getThumnailByIsbn(BookIsbn(isbnController.text));
                  var bookDetail = await ref.read(bookIsbnRepositoryProvider).getBookByIsbn(isbnController.text);
                  titleController.text = bookDetail.title;
                  authorController.text = bookDetail.author;
                  publisherController.text = bookDetail.publisher;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid ISBN')));
                }
              },
              child: const Text("get"),
            ),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              controller: authorController,
              decoration: const InputDecoration(labelText: 'Author'),
            ),
            TextFormField(
              controller: publisherController,
              decoration: const InputDecoration(labelText: 'Publisher'),
            ),
            TextFormField(
              controller: lastPageController,
              decoration: const InputDecoration(labelText: 'Last Page'),
            ),
            TextFormField(
              controller: currentPageController,
              decoration: const InputDecoration(labelText: 'Current Page'),
            ),
            TextButton(
                onPressed: () {
                  try {
                    var addBookDto = AddBookDto(
                        title: titleController.text,
                        author: authorController.text,
                        isbn: BookIsbn(isbnController.text),
                        publisher: publisherController.text,
                        currentPage: BookPage.fromString(currentPageController.text),
                        lastPage: BookPage.fromString(lastPageController.text));
                    if (AddBookDto.isValid(addBookDto)) {
                      ref.read(bookAppServiceProvider).addBook(addBookDto);
                      //ref.read(bookRepositoryProvider).addBook(addBookDto);
                      // AutoRouter.of(context).pop();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Invalid Form')));
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
                  }
                },
                child: const Text("決定する"))
          ],
        ),
      ),
    );
  }
}
