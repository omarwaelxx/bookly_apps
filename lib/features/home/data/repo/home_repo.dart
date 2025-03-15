import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String,List<BookModel>>> fetchAllBooks();
  Future<Either<String,List<BookModel>>> fetchBestSellerBooks() ;
}