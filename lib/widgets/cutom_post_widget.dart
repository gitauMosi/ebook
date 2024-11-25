// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ebook/models/book.dart';
import 'package:get/get.dart';

import '../features/home/pdf_view_page.dart';

// ignore: must_be_immutable
class CustomPostWidget extends StatelessWidget {
  Book book;
  CustomPostWidget({
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
        width: 100,
        margin: EdgeInsets.all(3),
        child: Column(
          children: [
            Container(
              width: 100,
             height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(image: NetworkImage(book.coverImage, ),fit: BoxFit.cover,)
               
              ),
            ),
            Text(book.title, style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Author: ${book.author}", style: TextStyle(fontSize: 10),),
            Spacer(),
            Row(
              children: [
                Icon(Icons.star, size: 13, color: Colors.amber,),
                Text(book.rating.toString(), style: TextStyle(fontSize: 10),)
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
