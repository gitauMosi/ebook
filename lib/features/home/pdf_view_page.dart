// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ebook/models/book.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// ignore: must_be_immutable
class PdfViewPage extends StatefulWidget {
  Book book;
  PdfViewPage({
    super.key,
    required this.book,
  });

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: Text(widget.book.title),
      centerTitle: true,
      actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
    ),
    body: SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: _pdfViewerKey,
      ),);
  }
}
