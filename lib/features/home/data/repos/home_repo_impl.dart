import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/core/error/failuer.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatuerdBooks() {
    // TODO: implement fetchFeatuerdBooks
    throw UnimplementedError();
  }
}
