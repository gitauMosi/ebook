import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.note, size: 100, color: Colors.grey[500],),
              Text("Empty books", style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        )
      ),
    );
  }
}