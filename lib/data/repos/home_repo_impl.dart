import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:bookly_app/core/error/failuer.dart';
import 'package:bookly_app/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//!New
final repoProvider = Provider<BookRepository>((ref) => BookRepository());

class BookRepository {
  final dio = Dio();

  Future<List<BookModel>> fiendBooks(
      {required String findBooks, int limit = 20, int page = 0}) async {
    final res = await dio.get(
      "https://www.googleapis.com/books/v1/volumes",
      queryParameters: {
        "q": findBooks,
        "startIndex": page * 10,
        "maxResults ": limit,
        "Filtering": "free-ebooks"
      },
    );
    final data = res.data["items"] as List;
    return data.map((e) => BookModel.fromJson(e)).toList();
  }
}

//? old
class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failuer, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=flutter');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailuer.fromDioError(e),
        );
      }
      return left(
        ServerFailuer(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchFeatuerdBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailuer.fromDioError(e),
        );
      }
      return left(
        ServerFailuer(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failuer, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=$category');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailuer.fromDioError(e),
        );
      }
      return left(
        ServerFailuer(
          e.toString(),
        ),
      );
    }
  }
}
