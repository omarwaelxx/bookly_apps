
import 'package:bloc/bloc.dart';
import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/widgets__screen2/listview_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class  screen2_item extends StatelessWidget {
   screen2_item({super.key,required this.bookModel});

final BookModel bookModel;

@override
  Widget build(BuildContext context) {



    return
      Column(crossAxisAlignment: CrossAxisAlignment.end,children: [

        Column(children: [ SizedBox(height: 10,),IconButton(onPressed:(){} , icon: Icon(Icons.shopping_cart)),],),

        Center(child: Container(width: 140,height: 250,decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("${bookModel.volumeInfo.imageLinks?.thumbnail??'https://media.istockphoto.com/id/1481191904/photo/paper-speech-bubble-with-the-word-oops-on-a-yellow-background-top-view-with-copy-space-flat.jpg?b=1&s=612x612&w=0&k=20&c=Mftz06OpIrGK0Wrw5JFFXCRqS239mOLC3q_6PHeNRZM='}"))),)),

        Center(child: Expanded(child: Text("${bookModel.volumeInfo.title??"(Sherlock Holmes)"}",maxLines: 2,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400)))),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.star),color: Colors.yellow,),
            Text("${bookModel.volumeInfo.ratingsCount??"(4.9)"}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),textAlign: TextAlign.start),

          ],
        ),




        SizedBox(height:10 ,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(width: 200,
                child: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xffFFFFFF),
                  child: Text("${bookModel.volumeInfo.pageCount??"200"}",style: TextStyle(fontSize: 25,color: Color(0xff000000),fontWeight: FontWeight.bold),),),

              ),
            ),


            Center(
              child: SizedBox(width: 200,
                child: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xffEF8262),
                  child: Text("free preview",style: TextStyle(fontSize: 20),),),
              ),
            ),



          ],
        ),


        SizedBox(height:80,),


            Column(children: [
           Container(margin: EdgeInsets.only(right:270),child: Text("You can also like",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                   ),



            ],),

        listview_items(),



      ],);
  }
}
