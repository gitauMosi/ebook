import 'package:flutter/material.dart';
import 'package:ebook/models/book.dart';
import 'package:get/get.dart';
import '../features/home/pdf_view_page.dart';

class CustomPostWidget extends StatelessWidget {
  final Book book;

  const CustomPostWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => PdfViewPage(book: book));
      },
      child: Container(
        width: 100,
        margin: const EdgeInsets.all(3),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(book.coverImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5), // Add spacing between elements
            Text(
              book.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis, // Handle long titles gracefully
            ),
            Text(
              "Author: ${book.author}",
              style: const TextStyle(fontSize: 10),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.star, size: 13, color: Colors.amber),
                const SizedBox(width: 5),
                Text(
                  book.rating.toString(),
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
