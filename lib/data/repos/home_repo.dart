import 'package:bookly_app/core/error/failuer.dart';
import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewsetBooks();
  // Future<List<BookModel>> fiendBooks();
  Future<Either<Failuer, List<BookModel>>> fetchFeatuerdBooks();
  Future<Either<Failuer, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
