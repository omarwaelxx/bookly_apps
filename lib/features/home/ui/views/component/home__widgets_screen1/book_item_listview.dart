import 'dart:io';

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
        return SizedBox(height:250 ,child: ListView.builder(scrollDirection: Axis.horizontal,
          //physics: const NeverScrollableScrollPhysics(),
         // padding: EdgeInsets.zero,
          itemBuilder: (context,index){
          return Book_item(bookModel: state.books[index],index: index,imageUrl: state.books[index].volumeInfo.imageLinks?.smallThumbnail??"https://images.pexels.com/photos/3747132/pexels-photo-3747132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" ,);
        },itemCount:state.books.length,));
      }

      else if (state is AllBooksError){return Center(child: Text(state.error),);}


      else{return const Center(child: CircularProgressIndicator());}
    });
  }
}

