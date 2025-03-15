import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item__price.dart';
import 'package:flutter/material.dart';

class book_item__price__listview extends StatelessWidget {
  const book_item__price__listview({super.key});

  @override
  Widget build(BuildContext context) {
    return

      SizedBox(height: 420,
        child: ListView.builder(scrollDirection: Axis.vertical,itemBuilder: (context,index){
        return book__item__price();


            },itemCount: 5,),
      );
  }
}
