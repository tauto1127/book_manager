import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:book_manager/domain/book/book.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@RoutePage()
class BookListPage extends StatefulWidget {
  BookListPage({super.key});

  final List<Book> books = [];

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            title: Text(widget.books[i].title),
          );
        },
        itemCount: widget.books.length,
      ),
    );
  }

  @override
  void initState() {
    getBooks();
    super.initState();
  }

  Future<void> getBooks() async {
    var result = await Supabase.instance.client.from('book').select('*');
    debugPrint(result.toString());
    result.forEach((value) {
      widget.books.add(Book.fromJson(value));
    });
    setState(() {});
  }
}
