class ReadingEntry {
  final String id;
  //value objectを使うべき？
  final int bookId;
  final DateTime startDate;
  final DateTime endDate;
  final int durationSeconds;
  final int pageRead;

  ReadingEntry({
    required this.id,
    required this.bookId,
    required this.startDate,
    required this.endDate,
    required this.durationSeconds,
    required this.pageRead,
  });
}
