import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class book_item_listview extends StatelessWidget {
  const book_item_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return
    BlocBuilder<AllBooksCubit,AllBooksState>(builder: (context,state){
      if(state is AllBooksSuccess) {
        return SizedBox(height:250 ,child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
          return book_item(index: index);
        },itemCount: 5,));
      }

      else if (state is AllBooksError){return Center(child: Text(state.error),);}


      else{return const Center(child: CircularProgressIndicator());}
    });
  }
}


























