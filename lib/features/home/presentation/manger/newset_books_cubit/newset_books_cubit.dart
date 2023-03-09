import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepoImpl) : super(NewsetBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchNewsetdBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRepoImpl.fetchNewseBooks();
    result.fold((failuer) {
      emit(NewsetBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
