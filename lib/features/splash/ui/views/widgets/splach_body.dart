
import 'package:bookly_apps/features/splash/ui/views/widgets/animation__image.dart';
import 'package:flutter/material.dart';

class splach_body extends StatefulWidget {
  const splach_body ({super.key});

  @override
  State<splach_body> createState() => _bookly_bodyState();
}

class _bookly_bodyState extends State<splach_body> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =AnimationController(vsync: this ,duration:Duration(seconds: 5) );
    animation = Tween<Offset>(begin:Offset(0, 10) ,end:Offset(0, 0)).animate(animationController);
    animationController.forward();
    gotohomescreen();
  }
  gotohomescreen (){
    
    Future.delayed(Duration(seconds: 6),
            (){ Navigator.pushReplacementNamed(context,"s1");});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        SizedBox(width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              animation__image(),


              SizedBox(height: 20,),


              SlideTransition(position:animation,

                child:Text("Read Free Books",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)
                ,)
            ],
          ),
        )
    );





  }
}
