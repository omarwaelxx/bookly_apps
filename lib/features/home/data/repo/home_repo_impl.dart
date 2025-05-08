import 'package:bookly_apps/core/utills/api__service.dart';
import 'package:bookly_apps/features/home/data/model/books.dart';
import 'package:bookly_apps/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl( this.apiService);

  @override
  Future<Either<String, List<BookModel>>> fetchAllBooks() async {
    var json = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&q=20");

    List<BookModel> books = [];

    try {

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
        endpoint: "volumes?Filtering=free-ebooks&Sorting=Sorting&q=20");
       List<BookModel> books = [];

    try {

      for (var i in json["items"]) {
        books.add(BookModel.fromJson(i));
      }
      return right(books);
    } catch (e) {
      return left(e.toString());
      // TODO
    }
  }












}