

import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/data/repo/home_repo.dart';
import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_cubit.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class best__seller_cubit extends Cubit<best__seller_state> {


  final HomeRepo homeRepo;


  best__seller_cubit(this.homeRepo) : super(best__seller_initial());

  void getBestSeller() async {
    emit(best__seller_loading());
    try {
      final books = await homeRepo.fetchBestSellerBooks();
      emit(best__seller_success(books as List<BookModel>));
    } catch (e) {
      emit(best__seller_error(e.toString()));
    }
  }
}

