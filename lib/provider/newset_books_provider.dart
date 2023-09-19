import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:bookly_app/data/repos/home_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

final newestBooksProvider =
    StateNotifierProvider<NewestBooksProvider, PagedState<int, BookModel>>(
        (ref) {
  final repo = ref.read(repoProvider);
  return NewestBooksProvider(repo);
});

class NewestBooksProvider extends PagedNotifier<int, BookModel> {
  NewestBooksProvider(BookRepository repo)
      : super(
          load: (page, limit) {
            return repo.newestBooks(limit: limit, page: page);
          },
          nextPageKeyBuilder: NextPageKeyBuilderDefault.mysqlPagination,
        );
}
