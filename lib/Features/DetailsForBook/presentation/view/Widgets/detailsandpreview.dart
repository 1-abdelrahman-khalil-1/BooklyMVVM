import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailscubit.dart';
import 'package:bookly/Features/DetailsForBook/presentation/cubit/detailsstate.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/detailsandpreviewbody.dart';
import 'package:bookly/Features/DetailsForBook/presentation/view/Widgets/exitandsave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailsandpreview extends StatelessWidget {
  const Detailsandpreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Detailscubit, Detailsstate>(builder: (context, state) {
      if (state is DetailsLoaded) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Exitandsave(),
            SizedBox(height: 10.h),
            Detailsandpreviewbody(details: state.details),
          ],
        );
        
      } else if (state is DetailsError) {
        return Text(state.message);
      } 
      else {
        return const CircularProgressIndicator();
      }
    });
  }
}
