
import 'package:flutter/material.dart';


class screen2_item extends StatelessWidget {
  const screen2_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end,children: [

      Column(children: [ SizedBox(height: 50,),IconButton(onPressed:(){} , icon: Icon(Icons.shopping_cart)),],),




      Center(child: Container(width: 140,height: 250,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/Book 2 Hightligh.png"))),)),

      Center(child: Text("The Jungle Book\n Rudyard Kipling",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w100))),





        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.star),color: Colors.yellow,),
               Text("4.8(2390)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.start),

           ],
               ),











      SizedBox(height:60 ,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(width: 200,
              child: FloatingActionButton(onPressed: (){},backgroundColor: Color(0xffFFFFFF),
                child: Text("19.19€",style: TextStyle(fontSize: 25,color: Color(0xff000000),fontWeight: FontWeight.bold),),),

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


      SizedBox(height:120,),

      Column(children: [


        Container(margin: EdgeInsets.only(right:330),child: Text("You can also like",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

        ),
        Column(children: [
        Container(width:70,height: 112,
    margin: EdgeInsets.only(right:400),

    decoration: BoxDecoration(
    image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/image 1.png")),

    ),)

    ],)
      ],),























    ],);
  }
}
