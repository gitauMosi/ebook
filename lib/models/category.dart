import 'package:ebook/models/book.dart';

class Category {
  final String id; // Unique identifier for the category
  final String name; // Name of the category
  final String? imgUrl;
  final List<Book> books; // List of books under this category

  Category({
    required this.id,
    required this.name,
    this.imgUrl,
    required this.books,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      books: (json['books'] as List)
          .map((book) => Book.fromJson(book))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'books': books.map((book) => book.toJson()).toList(),
      };
}
