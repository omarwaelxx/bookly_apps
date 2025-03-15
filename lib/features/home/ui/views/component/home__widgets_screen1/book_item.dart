import 'package:flutter/material.dart';
class book_item extends StatelessWidget {
  const book_item({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(width:index==0?200:150,height: 230,
        margin:index==0?EdgeInsets.only(left: 30): EdgeInsets.symmetric(horizontal: 5,vertical: 10),


        decoration: BoxDecoration(

          borderRadius:BorderRadius.circular(30) ,
          image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/image 1.png")),








        ),)

    ],);
  }
}
