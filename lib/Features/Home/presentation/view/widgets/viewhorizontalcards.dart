import 'package:bookly/Features/Home/presentation/cubit/cubit.dart';
import 'package:bookly/Features/Home/presentation/cubit/states.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/RecentBookcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Viewhorizontalcards extends StatelessWidget {
  const Viewhorizontalcards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentHomeCubit, HomeState>(builder: (context, state) {
      if (state is Succesful) {
        return SizedBox(
            height: 224.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return RecentBookcard(bookitem: state.bookList[index] , id : index);
              },
              itemCount: state.bookList.length,
            ));
      } else if (state is Error) {
        return Center(child: Text(state.error));
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
