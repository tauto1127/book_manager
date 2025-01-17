class ReadingEntry {
  final String id;
  //value objectを使うべき？
  final int bookId;
  final DateTime startAt;
  final DateTime endAt;
  final int durationInSeconds;
  final int pageRead;

  ReadingEntry({
    required this.id,
    required this.bookId,
    required this.startAt,
    required this.endAt,
    required this.durationInSeconds,
    required this.pageRead,
  });
}
