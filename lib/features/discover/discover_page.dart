import 'package:ebook/utils/data.dart';
import 'package:ebook/widgets/cutom_post_widget.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search books...",
              ),
          
              GridView.builder(
                itemCount: sampleBooks.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
          
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16
                  ), 
                itemBuilder: (context, index) => CustomPostWidget(book: sampleBooks[index]))
            ],
          ),
        ),
      ),
    );
  }
}