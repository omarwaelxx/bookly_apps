import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/ui/views/component/widgets__screen2/screen2__body.dart';
import 'package:flutter/material.dart';

class screen2__screen extends StatelessWidget {
   screen2__screen({super.key});

  @override
  Widget build(BuildContext context) {
  BookModel bookModel=ModalRoute.of(context)!.settings.arguments as BookModel;

    return Scaffold(
      body:
      Column(children: [
      screen2__body(bookModel: bookModel,)

      ],));

  }
}

