class Book {
  final String id; // Unique identifier
  final String title;
  final String author;
  final String description;
  final String coverImage; // URL or asset path for the book cover
  final String pdfPath; // Local or remote path to the PDF file
  final DateTime publicationDate;
  final double rating; // Average user rating
  final int totalPages;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.coverImage,
    required this.pdfPath,
    required this.publicationDate,
    required this.rating,
    required this.totalPages,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      coverImage: json['coverImage'],
      pdfPath: json['pdfPath'],
      publicationDate: DateTime.parse(json['publicationDate']),
      rating: json['rating']?.toDouble() ?? 0.0,
      totalPages: json['totalPages'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'author': author,
        'description': description,
        'coverImage': coverImage,
        'pdfPath': pdfPath,
        'publicationDate': publicationDate.toIso8601String(),
        'rating': rating,
        'totalPages': totalPages,
      };
}
