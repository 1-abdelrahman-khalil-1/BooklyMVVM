import 'package:bookly/Features/DetailsForBook/Data/Model/book.dart';
import 'package:bookly/Features/Search/presentation/view/widgets/listviewresultsbody.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookresults});
  final List<Book> bookresults;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: bookresults.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Listviewresultsbody(bookresult : bookresults[index] ),
        );
      },
    );
  }
}