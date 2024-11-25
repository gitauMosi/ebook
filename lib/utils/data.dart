import '../models/book.dart';
import '../models/category.dart';

List<Book> sampleBooks = [
  Book(
    id: "1",
    title: "Flutter for Beginners",
    author: "John Doe",
    description: "An introductory guide to Flutter development.",
    coverImage: "https://miro.medium.com/v2/resize:fit:800/1*3-M8z7qtE32OgRGQEBSX-Q.png", // Replace with your asset
    pdfPath: "assets/pdfs/flutter_for_beginners.pdf",
    publicationDate: DateTime(2022, 5, 15),
    rating: 4.5,
    totalPages: 200,
  ),
  Book(
    id: "2",
    title: "Mastering Dart",
    author: "Jane Smith",
    description: "An in-depth book on Dart programming language.",
    coverImage: "https://dart.dev/assets/img/cover/o-guia-de-dart.webp", // Replace with your asset
    pdfPath: "assets/pdfs/mastering_dart.pdf",
    publicationDate: DateTime(2021, 8, 10),
    rating: 4.8,
    totalPages: 350,
  ),
  Book(
    id: "3",
    title: "Introduction to Algorithms",
    author: "Thomas Cormen",
    description: "A comprehensive guide to algorithms.",
    coverImage: "https://images.booksense.com/images/158/225/9781088225158.jpg", // Replace with your asset
    pdfPath: "assets/pdfs/intro_to_algorithms.pdf",
    publicationDate: DateTime(2015, 1, 5),
    rating: 4.9,
    totalPages: 1312,
  ),
   Book(
    id: "4",
    title: "Flutter for Beginners",
    author: "John Doe",
    description: "An introductory guide to Flutter development.",
    coverImage: "https://miro.medium.com/v2/resize:fit:800/1*3-M8z7qtE32OgRGQEBSX-Q.png", // Replace with your asset
    pdfPath: "assets/pdfs/flutter_for_beginners.pdf",
    publicationDate: DateTime(2022, 5, 15),
    rating: 4.5,
    totalPages: 200,
  ),
  Book(
    id: "5",
    title: "Mastering Dart",
    author: "Jane Smith",
    description: "An in-depth book on Dart programming language.",
    coverImage: "https://dart.dev/assets/img/cover/o-guia-de-dart.webp", // Replace with your asset
    pdfPath: "assets/pdfs/mastering_dart.pdf",
    publicationDate: DateTime(2021, 8, 10),
    rating: 4.8,
    totalPages: 350,
  ),
  Book(
    id: "6",
    title: "Introduction to Algorithms",
    author: "Thomas Cormen",
    description: "A comprehensive guide to algorithms.",
    coverImage: "https://images.booksense.com/images/158/225/9781088225158.jpg", // Replace with your asset
    pdfPath: "assets/pdfs/intro_to_algorithms.pdf",
    publicationDate: DateTime(2015, 1, 5),
    rating: 4.9,
    totalPages: 1312,
  ),
];

// Sample categories
final sampleCategories = [
  Category(
    id: "1",
    name: "Programming",
    imgUrl: "https://static.vecteezy.com/system/resources/thumbnails/025/399/762/small_2x/programming-coding-icon-logo-design-template-vector.jpg",
    books: [
      sampleBooks[0], // Flutter for Beginners
      sampleBooks[1], // Mastering Dart
    ],
  ),
  Category(
    id: "2",
    name: "Computer Science",
    imgUrl: "https://i.ytimg.com/vi/SzJ46YA_RaA/maxresdefault.jpg",
    books: [
      sampleBooks[2], // Introduction to Algorithms
      sampleBooks[0], 
      sampleBooks[3], 
      sampleBooks[1], 
    ],
  ),
  Category(
    id: "3",
    name: "Web Design",
    imgUrl: "https://www.academyoflearning.com/wp-content/uploads/2022/06/Web_design_7.jpeg",
    books: [
      sampleBooks[2], // Introduction to Algorithms

    ],
  ),
  Category(
    id: "4",
    name: "Database Programming",
    imgUrl: "https://img.freepik.com/free-vector/database-floating-squares_78370-6689.jpg",
    books: [
      sampleBooks[2], // Introduction to Algorithms
    ],
  ),
  Category(
    id: "5",
    name: "Data Science",
    imgUrl: "https://www.btelligent.com/fileadmin/_processed_/7/0/csm_data-science-ansatz_0373e58061.jpg",
    books: [
      
    ],
  ),
  Category(
    id: "2",
    name: "NetWorking",
    imgUrl: "https://www.sdxcentral.com/wp-content/uploads/2024/03/AI_networking-e1709587108539.jpg",
    books: [
      sampleBooks[2], // Introduction to Algorithms
    ],
  ),
];

