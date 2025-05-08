import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item__price.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class book_item__price__listview extends StatelessWidget {
const book_item__price__listview({super.key,});



  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<best__seller_cubit,best__seller_state>(builder: (context,state){
      if(state is best__seller_success) {
        return
           SliverList.builder(itemBuilder: (context,index){
            return book__item__price(bookModel: state.books[index],
              imageUrl: state.books[index].volumeInfo.imageLinks?.smallThumbnail??
                  'https://images.pexels.com/photos/3747132/pexels-photo-3747132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              title: state.books[index].volumeInfo.title??'tamtam',
              price: state.books[index].saleInfo?.listPrice?.amount.toString()??'19.99 €',
              rating: state.books[index].volumeInfo.averageRating.toString()??'Error',
              author: state.books[index].volumeInfo.authors?[0]??'Error',


            );
          },itemCount:state.books.length,);}


          else if (state is best__seller_error) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text(state.error),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: const Center(
                child: CircularProgressIndicator(),
                      ),
            );}},


  );
}
}