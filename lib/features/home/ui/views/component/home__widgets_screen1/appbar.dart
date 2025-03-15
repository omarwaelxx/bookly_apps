import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return
       Column(children: [SizedBox(height:60),

    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [

    Image.asset("images/Logo.png"),
    IconButton(onPressed: (){}, icon:Icon(Icons.search))

    ],),
    )



    ],);
  }
}
