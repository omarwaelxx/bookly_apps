import 'package:flutter/material.dart';
class book__item__price extends StatelessWidget {
  const book__item__price({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Row(children: [
          MaterialButton(onPressed: () {Navigator.pushNamed(context,"s2" ); },
            child: Container(width: 80,height: 105,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fill,image:AssetImage("images/image 2.png"), )),
              margin: EdgeInsets.only(left: 40),
              ),
          ),

         Text("Harry potter\n and the Goblet of fire\n ""J.K.Rowling\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.start),

        ],),

        /// Baseline  بيستخدم عشان ارفع الكلام لفوق شويه
        Baseline(baseline: 0,baselineType: TextBaseline.alphabetic,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("19.19€",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start),

              IconButton(onPressed: (){}, icon:Icon(Icons.star),color: Colors.yellow,)
            ],
          ),
        ),


        SizedBox(height: 20,),


      ]
    );

  }
}
