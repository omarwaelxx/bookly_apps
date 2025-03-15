import 'package:flutter/material.dart';

class animation__image extends StatefulWidget {
  const animation__image({super.key});

  @override
  State<animation__image> createState() => _animation__imageState();
}

class _animation__imageState extends State<animation__image> with SingleTickerProviderStateMixin{


  late AnimationController animationController;
  late Animation<Offset> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =AnimationController(vsync: this ,duration:Duration(seconds: 5) );
    animation = Tween<Offset>(begin:Offset(0, 10) ,end:Offset(0,0  )).animate(animationController);
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width:200,
      child: Column(
        mainAxisAlignment:MainAxisAlignment.start ,

        children: [
          SlideTransition  (position:animation,
            child: Container(width: 200,height: 50,
                decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image:  AssetImage("images/Logo.png"),),)),
          ),



          SizedBox(height: 20,),



        ],
      ),
    );
  }
}
