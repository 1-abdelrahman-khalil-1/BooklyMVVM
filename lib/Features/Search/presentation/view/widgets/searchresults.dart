import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Features/Search/presentation/cubit/searchcubit.dart';
import 'package:bookly/Features/Search/presentation/cubit/searchcubitstates.dart';
import 'package:bookly/Features/Search/presentation/view/widgets/searchresultlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchresults extends StatefulWidget {
  const Searchresults({super.key, required this.title});
 final String title;
  @override
  State<Searchresults> createState() => _SearchresultsState();
}

class _SearchresultsState extends State<Searchresults> {
  @override
  void initState() {
    super.initState();
    if( widget.title.isNotEmpty) {
      BlocProvider.of<Searchcubit>(context).getresults(key: widget.title);
    }
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Searchcubit, Searchcubitstates>(
            builder: (context, state) {
              if( state is Searchloaded ) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search Results',
                    style:
                        MyTextStyle.style18bold.copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                   Expanded(
                    child: SearchResultListView(
                      bookresults: state.books,
                    ),
                  ),
                ],
              );
              } else if (state is Searchloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is Searcherror) {
                return Center(
                  child: Text(
                    state.message,
                    style:
                        MyTextStyle.style18bold.copyWith(color: Colors.white),
                  ),
                );
              } else {
                return Text(
                    'Search Results',
                    style:
                        MyTextStyle.style18bold.copyWith(color: Colors.white),
                  );

              }
            }
          );
  }
}