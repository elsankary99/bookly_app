part of 'similar_book_cubit.dart';

abstract class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

class SimilarBookInitial extends SimilarBookState {}

class SimilarBookLoading extends SimilarBookState {}

class SimilarBookFailuer extends SimilarBookState {
  final String errMessage;

  const SimilarBookFailuer(this.errMessage);
}

class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;

  const SimilarBookSuccess(this.books);
}
