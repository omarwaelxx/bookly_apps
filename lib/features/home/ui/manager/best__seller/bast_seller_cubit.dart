
import 'package:bookly_apps/features/home/data/repo/home_repo.dart';
import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_state.dart';
import 'package:bookly_apps/features/home/ui/manager/best__seller/bast_seller_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksCubit  extends Cubit<AllBooksState>{

  AllBooksCubit(this.homeRepo): super(best_sellerInitial());

  final HomeRepo homeRepo;


  getAllBooks() async {
    emit(best_sellerLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((error) { emit(best_sellerStateError(error));},


            (books){emit(best_sellerSuccess(books));});


  }
}


