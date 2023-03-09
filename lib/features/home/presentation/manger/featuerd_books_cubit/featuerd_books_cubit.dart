import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepoImpl) : super(FeatuerdBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchFeatuerdBooks() async {
    emit(FeatuerdBooksLoading());

    var result = await homeRepoImpl.fetchFeatuerdBooks();
    result.fold((failuer) {
      emit(FeatuerdBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(FeatuerdBooksSuccess(books));
    });
  }
}
