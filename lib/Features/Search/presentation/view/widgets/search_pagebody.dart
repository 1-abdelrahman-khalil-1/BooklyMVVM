import 'package:bookly/Features/Search/presentation/view/widgets/Customtextfield.dart';
import 'package:bookly/Features/Search/presentation/view/widgets/searchresults.dart';
import 'package:flutter/material.dart';

class SearchPagebody extends StatelessWidget {
  const SearchPagebody({super.key});

 
  @override
  Widget build(BuildContext context) {
    TextEditingController searchcontroller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CustomTextField(),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: Searchresults(title: searchcontroller.text )),
        ],
      ),
    );
  }
}
