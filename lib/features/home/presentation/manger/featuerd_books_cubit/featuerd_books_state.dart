part of 'featuerd_books_cubit.dart';

abstract class FeatuerdBooksState extends Equatable {
  const FeatuerdBooksState();

  @override
  List<Object> get props => [];
}

class FeatuerdBooksInitial extends FeatuerdBooksState {}

class FeatuerdBooksLoading extends FeatuerdBooksState {}

class FeatuerdBooksFailuer extends FeatuerdBooksState {
  final String errMessage;

  const FeatuerdBooksFailuer(this.errMessage);
}

class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookModel> books;
  const FeatuerdBooksSuccess(this.books);
}
