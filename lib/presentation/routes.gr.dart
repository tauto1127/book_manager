// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:book_manager/presentation/page/add_book_page.dart' as _i1;
import 'package:book_manager/presentation/page/book_list_page.dart' as _i2;
import 'package:book_manager/presentation/page/home.dart' as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.AddBookPage]
class AddBookRoute extends _i4.PageRouteInfo<void> {
  const AddBookRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AddBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBookRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddBookPage();
    },
  );
}

/// generated route for
/// [_i2.BookListPage]
class BookListRoute extends _i4.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookListRouteArgs>(
          orElse: () => const BookListRouteArgs());
      return _i2.BookListPage(key: args.key);
    },
  );
}

class BookListRouteArgs {
  const BookListRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.MyHomePage]
class MyHomeRoute extends _i4.PageRouteInfo<void> {
  const MyHomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.MyHomePage();
    },
  );
}
