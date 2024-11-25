// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ebook/widgets/category_tile.dart';
import 'package:flutter/material.dart';

import 'package:ebook/models/category.dart';

// ignore: must_be_immutable
class CatageryPage extends StatelessWidget {
  Category cat;
   CatageryPage({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name, style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(4),
        child:  cat.books.isNotEmpty 
    ? ListView.builder(
      itemCount: cat.books.length,
      itemBuilder: (context, index)=> CategoryTile(book: cat.books[index]))
    :
     Center(
      child: Text("Empty Books"),
    ),
        )
    );
  }
}
