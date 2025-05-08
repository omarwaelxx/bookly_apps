

import 'package:bookly_apps/features/home/data/model/books.dart';

abstract  class best__seller_state{}

class  best__seller_initial extends best__seller_state{}

class best__seller_loading extends best__seller_state{}


class best__seller_success extends best__seller_state{
  final List<BookModel> books;

  best__seller_success(this.books);
}

class best__seller_error extends best__seller_state{
  final String error;

  best__seller_error(this.error);
}




