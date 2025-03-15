import "package:bookly_apps/features/home/data/model/books.dart";
import "package:flutter/cupertino.dart";

abstract class best_sellerState {}
  class best_sellerInitial extends best_sellerState {}

  class best_sellerLoading extends best_sellerState {}




  class best_sellerSuccess extends best_sellerState {
  final List<BookModel> books;

  best_sellerSuccess( this.books);
  }




  class best_sellerError extends best_sellerState {
  final String error;

  best_sellerError(this.error);
  }

