import 'package:flutter/material.dart';

@immutable
class BookPage {
  final int value;

  BookPage(this.value) {
    if (isPageValid(value) == false) {
      throw ArgumentError('Book page cannot be negative');
    }
  }

  static bool isPageValid(int value) {
    return value >= 0;
  }

  bool isValid() {
    return isPageValid(value);
  }

  BookPage.fromString(String value) : value = int.parse(value);

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookPage && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'BookPage{value: $value}';
  }
}
