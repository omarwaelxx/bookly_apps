import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/widgets__screen2/image_item.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listview_items extends StatelessWidget {
 const  listview_items({super.key});



  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<best__seller_cubit,best__seller_state>(builder: (context,state){
      if(state is best__seller_success) {
        return
        SizedBox(height: 150,
          child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
              return
                  image_item(
                  imageUrl: state.books[index].volumeInfo.imageLinks?.smallThumbnail??'https://images.pexels.com/photos/3747132/pexels-photo-3747132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',


              );
            },itemCount:state.books.length,),
        );}


      else if (state is best__seller_error) {
        return  Center(
            child: Text(state.error),

        );
      } else {
        return  const Center(
            child: CircularProgressIndicator(),

        );}},


    );





  }
}
