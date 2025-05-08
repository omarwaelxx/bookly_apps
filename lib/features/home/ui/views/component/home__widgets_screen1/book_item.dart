import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:flutter/material.dart';
class Book_item extends StatelessWidget {
  Book_item({super.key, required this.index,required this.imageUrl, required this.bookModel});


  final int index;
  final String imageUrl;
  final BookModel bookModel;


  @override
  Widget build(BuildContext context) {
    return Column(children: [

      InkWell(onTap: (){Navigator.pushNamed(context, "s2",arguments:bookModel );},
        child: Container(width:index==0?200:150,height: 230,
          margin:index==0?const EdgeInsets.only(left: 30):const EdgeInsets.symmetric(horizontal: 5,vertical: 10),


          decoration: BoxDecoration(

            borderRadius:BorderRadius.circular(30) ,
            image: DecorationImage(fit: BoxFit.fill,image:NetworkImage(imageUrl),),


         ),),
      )

    ],);
  }
}

