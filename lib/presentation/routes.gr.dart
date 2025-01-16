// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:book_manager/presentation/page/add_book_page.dart' as _i1;
import 'package:book_manager/presentation/page/add_entry_page.dart' as _i2;
import 'package:book_manager/presentation/page/book_list_page.dart' as _i3;
import 'package:book_manager/presentation/page/developer_page.dart' as _i4;
import 'package:book_manager/presentation/page/home.dart' as _i5;
import 'package:flutter/material.dart' as _i7;

/// generated route for
/// [_i1.AddBookPage]
class AddBookRoute extends _i6.PageRouteInfo<void> {
  const AddBookRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AddBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBookRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddBookPage();
    },
  );
}

/// generated route for
/// [_i2.AddEntryPage]
class AddEntryRoute extends _i6.PageRouteInfo<void> {
  const AddEntryRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AddEntryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddEntryRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i2.AddEntryPage();
    },
  );
}

/// generated route for
/// [_i3.BookListPage]
class BookListRoute extends _i6.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookListRouteArgs>(
          orElse: () => const BookListRouteArgs());
      return _i3.BookListPage(key: args.key);
    },
  );
}

class BookListRouteArgs {
  const BookListRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.DeveloperPage]
class DeveloperRoute extends _i6.PageRouteInfo<void> {
  const DeveloperRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DeveloperRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeveloperRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.DeveloperPage();
    },
  );
}

/// generated route for
/// [_i5.MyHomePage]
class MyHomeRoute extends _i6.PageRouteInfo<void> {
  const MyHomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MyHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyHomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyHomePage();
    },
  );
}
