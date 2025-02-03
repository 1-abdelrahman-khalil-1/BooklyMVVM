import 'package:bookly/Features/Home/presentation/cubit/cubit.dart';
import 'package:bookly/Features/Home/presentation/cubit/states.dart';
import 'package:bookly/Features/Home/presentation/view/widgets/bestfreebooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bestfreelistview extends StatelessWidget {
  const Bestfreelistview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularHomeCubit , HomeState>(builder: (context , state){
        if(state is Succesful)
        {
         return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Bestfreebooks(booklist: state.bookList[index] , id: index,);
              },
              childCount: state.bookList.length,
            ));
        } else if( state is Error )
        {
          return SliverToBoxAdapter(child: Center( heightFactor: 5.h, child: Text(state.error)));
        } else 
        {
          return const SliverToBoxAdapter(child: Align(alignment: Alignment.center, child: CircularProgressIndicator()));
        }
    }) ;
  }
}
