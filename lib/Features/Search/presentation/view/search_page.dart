import 'package:bookly/Features/Search/presentation/view/widgets/search_pagebody.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
        body:  SearchPagebody()
      ),
      );
  }
}