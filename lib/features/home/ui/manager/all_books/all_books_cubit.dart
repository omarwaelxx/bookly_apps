import 'package:bookly_apps/features/home/data/repo/home_repo.dart';
import 'package:bookly_apps/features/home/ui/manager/all_books/all_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksCubit  extends Cubit<AllBooksState>{

  AllBooksCubit(this.homeRepo): super(AllBooksInitial());
  final HomeRepo homeRepo;



  getAllBooks() async {
    emit(AllBooksLoading());
    var result = await homeRepo.fetchAllBooks();
    result.fold((error) { emit(AllBooksError(error));}, (books){emit(AllBooksSuccess(books));});


  }
}



