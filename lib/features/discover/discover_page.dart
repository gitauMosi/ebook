import 'package:ebook/utils/data.dart';
import 'package:ebook/widgets/cutom_post_widget.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers: [
          // SliverAppBar with Search Bar
          SliverAppBar(
            floating: true,
            pinned: true,
            expandedHeight: 100.0,
            backgroundColor: Theme.of(context).primaryColor,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search books...",
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // List content below the SliverAppBar
          SliverToBoxAdapter(
            child: customSearchBody(),
          )
        ],
      ),
    );
  }

  Padding customSearchBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          GridView.builder(
            itemCount: sampleBooks.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
      
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.75,
              ), 
            itemBuilder: (context, index) {
              return CustomPostWidget(book: sampleBooks[index]);
            })
        ],
      ),
    );
  }
}