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
        title: Text(
          'EraBook',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: ListView.builder(
                itemCount: sampleBooks.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 2, right: 3, left: 5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    CustomPostWidget(book: sampleBooks[index]),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  Text("Explore by Genre", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt, size: 20, color: Colors.amber,))
                ],
              ),
            ),
             SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: ListView.builder(
                itemCount: sampleCategories.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 2, right: 3, left: 5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    CategoryWidget(cat: sampleCategories[index],)
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: [
                  Text("Recommended for you", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt, size: 20, color: Colors.amber,))
                ],
              ),
            ),
             SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 230,
              child: ListView.builder(
                itemCount: sampleBooks.length,
                shrinkWrap: true,
                reverse: true,
                padding: EdgeInsets.only(top: 2, right: 3, left: 5),
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
}
