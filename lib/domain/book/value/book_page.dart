import 'package:flutter/material.dart';

@immutable
class BookPage {
  final int value;

  BookPage(this.value) {
    if (value < 0) {
      throw ArgumentError('Book page cannot be negative');
    }
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookPage && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'BookPage{value: $value}';
  }
}
