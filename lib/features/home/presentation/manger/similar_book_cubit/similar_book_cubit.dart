import 'package:bloc/bloc.dart';
import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:bookly_app/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimiarBooks({required String category}) async {
    emit(SimilarBookLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failuer) {
      emit(SimilarBookFailuer(failuer.errMessage));
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
