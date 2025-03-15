import 'package:bookly_apps/core/utills/api__service.dart';
import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<String, List<BookModel>>> fetchAllBooks() async {
    var json = await apiService.get(
        endpoint: "books/v1/volumes?Filtering=free-ebooks&q=20");

    try {
      List<BookModel> books = [];
      for (var i in json['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
      // TODO
    }
  }


  @override
  Future<Either<String, List<BookModel>>> fetchBestSellerBooks() async {
    var json = await apiService.get(
        endpoint:"books/v1/volumes?Filtering=free-ebooks&Sorthing=&q=20");

    try {
      List<BookModel> books = [];
      for (var i in json['items']) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
      // TODO


    }
  }
}