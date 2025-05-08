


import 'package:flutter/material.dart';
class image_item extends StatelessWidget {
  image_item({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(width: 70, height: 112,
        margin: const EdgeInsets.only(left: 20),


        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(imageUrl)),

        ),)
    ],);
  }
}
