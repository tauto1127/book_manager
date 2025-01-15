import 'package:flutter/foundation.dart';

@immutable
class BookIsbn {
  final String value;

  BookIsbn(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('Book ISBN cannot be empty');
    }
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookIsbn && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'BookIsbn{value: $value}';
  }

  bool isValid() {
    return isIsbnValid(value);
  }

  static bool isIsbnValid(String value) {
    if (value.length == 10 || value.length == 13) {
      return true;
    }
    return false;
  }
}
