import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item.dart';
import 'package:flutter/material.dart';

class book_item_listview extends StatelessWidget {
  const book_item_listview({super.key});

  @override
  Widget build(BuildContext context) {
    return    SizedBox(height:250 ,


      child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index){

        return book_item(index: index);
      },itemCount: 5,),
    );
  }
}









