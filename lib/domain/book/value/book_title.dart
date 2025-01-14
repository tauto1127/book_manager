import 'package:flutter/material.dart';

@immutable
class BookTitle {
  final String value;

  BookTitle(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('Book title cannot be empty');
    }
  }
}
