import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:flutter/material.dart';
class book__item__price extends StatelessWidget {
   book__item__price({super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.rating, required this.bookModel, required this.author,

  });
  final String imageUrl;
  final String title;
  final String price;
  final String rating;
  final BookModel bookModel;

  final String author;


  @override
  Widget build(BuildContext context) {
     return
         Column(
           children: [
            Row(children: [
               InkWell(onTap: (){Navigator.pushNamed(context, "s2",arguments:bookModel );},
                 child: Container(width: 80,height: 105,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                     image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(imageUrl),)),
                   margin: EdgeInsets.only(left: 40),
                   ),
               ),





            SizedBox(width: 20,),
            Expanded(child: Text(title,maxLines: 3,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.start)),
            ],),




            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("$author",maxLines: 1,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),textAlign: TextAlign.start),
            ),





                Row(mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                    Text(" $price",maxLines: 3,overflow: TextOverflow.ellipsis,softWrap: true,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.start),

                    SizedBox(width: 100,),






                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon:Icon(Icons.star),color: Colors.yellow,),
                       Text("(4.9)",maxLines: 3,overflow: TextOverflow.ellipsis,softWrap: true,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),textAlign: TextAlign.start),
                      ],
                    )
                   ],
                ),




           ]);




  }
}
