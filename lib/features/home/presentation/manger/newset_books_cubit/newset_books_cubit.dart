import 'package:bloc/bloc.dart';
import 'package:bookly_app/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

import '../../../../../data/model/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewsetdBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failuer) {
      emit(NewsetBooksFailuer(failuer.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
