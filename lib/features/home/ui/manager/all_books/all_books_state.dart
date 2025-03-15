import "package:bookly_apps/features/home/data/model/books.dart";
import "package:flutter/cupertino.dart";

abstract class AllBooksState {}


  class AllBooksInitial extends AllBooksState {}

  class AllBooksLoading extends AllBooksState {}


  class AllBooksSuccess extends AllBooksState {
  final List<BookModel> books;

  AllBooksSuccess(this.books);
  }


  class AllBooksError extends AllBooksState {
  final String error;

  AllBooksError( this.error);
  }
