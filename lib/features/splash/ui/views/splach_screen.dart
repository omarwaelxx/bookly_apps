import 'package:bookly_apps/features/splash/ui/views/widgets/animation__image.dart';
import 'package:bookly_apps/features/splash/ui/views/widgets/splach_body.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body:splach_body(),












    );
  }
}
