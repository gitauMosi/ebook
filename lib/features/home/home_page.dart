import 'package:ebook/utils/data.dart';
import 'package:ebook/widgets/category_widget.dart';
import 'package:ebook/widgets/cutom_post_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EraBook',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Featured Books Section
            _buildSectionTitle("Featured Books", () {}),
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: sampleBooks.length,
                padding: const EdgeInsets.only(top: 2, right: 3, left: 5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    CustomPostWidget(book: sampleBooks[index]),
              ),
            ),
            //const SizedBox(height: 10),

            // Explore by Genre Section
            _buildSectionTitle("Explore by Genre", () {}),
            SizedBox(
              height: 70,
              child: ListView.builder(
                itemCount: sampleCategories.length,
                padding: const EdgeInsets.only(top: 2, right: 3, left: 5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CategoryWidget(
                  cat: sampleCategories[index],
                ),
              ),
            ),
            //const SizedBox(height: 10),

            // Recommended Section
            _buildSectionTitle("Recommended for You", () {}),
            SizedBox(
              height: 210,
              child: ListView.builder(
                itemCount: sampleBooks.length,
                reverse: true, // Reverse for visual differentiation
                padding: const EdgeInsets.only(top: 2, right: 3, left: 5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    CustomPostWidget(book: sampleBooks[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Section Title
  Widget _buildSectionTitle(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Spacer(),
          IconButton(
            onPressed: onTap,
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 20,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
