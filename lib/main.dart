import 'package:bookly_apps/core/utills/api__service.dart';
import 'package:bookly_apps/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';
import 'package:bookly_apps/features/home/ui/views/component/home__screen.dart';
import 'package:bookly_apps/features/home/ui/views/screen2__screen.dart';
import 'package:bookly_apps/features/splash/ui/views/splach_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/ui/manager/best__seller/bast_seller_cubit.dart';


void main(){
  runApp( booklyApp());}


class booklyApp extends StatelessWidget {
   booklyApp({super.key});
  final Dio dio = Dio();


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:[
      BlocProvider(create: (context)=>AllBooksCubit(HomeRepoImpl(apiService:ApiService(dio)))..getAllBooks() ),

      BlocProvider(create: (context)=> best__seller_cubit(HomeRepoImpl(apiService:ApiService(dio))) ),],

    child:MaterialApp(
        debugShowCheckedModeBanner:false ,
        routes: {
          "s1":(context)=>home_screen(),
          "s2":(context)=> screen2__screen()
        },
      
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: const Color(0xff100B20)),
      
        home: const splash_screen(),

      
      ),
    );
  }
}
