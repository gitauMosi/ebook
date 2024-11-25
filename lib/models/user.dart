class User {
  final String userId;
  final String name;
  final String email;
  final String avatar; // Profile picture
  final List<String> favoriteBooks; // List of book IDs
  final List<String> recentBooks; // List of book IDs for recently viewed books

  User({
    required this.userId,
    required this.name,
    required this.email,
    required this.avatar,
    required this.favoriteBooks,
    required this.recentBooks,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      name: json['name'],
      email: json['email'],
      avatar: json['avatar'],
      favoriteBooks: List<String>.from(json['favoriteBooks'] ?? []),
      recentBooks: List<String>.from(json['recentBooks'] ?? []),
    );
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'name': name,
        'email': email,
        'avatar': avatar,
        'favoriteBooks': favoriteBooks,
        'recentBooks': recentBooks,
      };
}
