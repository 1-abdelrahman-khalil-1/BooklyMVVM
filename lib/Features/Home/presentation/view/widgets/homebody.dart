import 'package:bookly/Core/assets/fonts.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/bestfreelistview.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/searchandlogo.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/viewhorizontalcards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homebody extends StatelessWidget {
  const Homebody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Searchandlogo(),
                SizedBox(height: 20.h),
                const Viewhorizontalcards(),
                    
              ],
            ),
          ),

          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Best Free" , style: MyTextStyle.bookplusStyle18 ,),
            backgroundColor: const Color.fromRGBO(16, 11, 32, 1),
          ),

          const Bestfreelistview(),
          
           ],
           
      ),
    );
  }
}
