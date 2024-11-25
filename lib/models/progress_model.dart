class ReadingProgress {
  final String bookId;
  final int currentPage;
  final DateTime lastRead;

  ReadingProgress({
    required this.bookId,
    required this.currentPage,
    required this.lastRead,
  });

  factory ReadingProgress.fromJson(Map<String, dynamic> json) {
    return ReadingProgress(
      bookId: json['bookId'],
      currentPage: json['currentPage'] ?? 0,
      lastRead: DateTime.parse(json['lastRead']),
    );
  }

  Map<String, dynamic> toJson() => {
        'bookId': bookId,
        'currentPage': currentPage,
        'lastRead': lastRead.toIso8601String(),
      };
}
