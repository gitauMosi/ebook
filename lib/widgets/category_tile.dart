import 'package:ebook/features/home/pdf_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/book.dart';

class CategoryTile extends StatelessWidget {
  final Book book;

  CategoryTile({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>PdfViewPage(book: book));
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            // Book cover image
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(book.coverImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
      
            const SizedBox(width: 10),
      
            // Book details
            Expanded(
              // To ensure text doesn't overflow the row
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the text vertically
                children: [
                  Text(
                    book.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    maxLines: 1, // Limit to one line and ellipsis if overflow
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    book.author,
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    book.description,
                    style: const TextStyle(fontSize: 13),
                    maxLines: 2, // Limit to 2 lines
                    overflow:
                        TextOverflow.ellipsis, // Add ellipsis if it overflows
                  ),
                  const SizedBox(height: 5),
                  Text(
                    book.publicationDate.toString().substring(0, 10),
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
