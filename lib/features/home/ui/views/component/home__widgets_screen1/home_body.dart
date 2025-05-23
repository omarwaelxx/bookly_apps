import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/appbar.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item__price__listview.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__widgets_screen1/book_item_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/all_books/all_books_cubit.dart';

class home_body extends StatelessWidget {
  const home_body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              appbar(),
              book_item_listview(),
              Row(
                children: [
                  SizedBox(
                    height: 101,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      "Best Seller",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
        book_item__price__listview(),
      ],
    );
  }
}
