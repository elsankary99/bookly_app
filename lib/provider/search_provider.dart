import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:bookly_app/data/repos/home_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

final findProvider = StateProvider.autoDispose<String>((ref) => "");

final searchPaginationProvider = StateNotifierProvider.autoDispose<
    SearchPaginationProvider, PagedState<int, BookModel>>((ref) {
  final repo = ref.read(repoProvider);
  final result = ref.watch(findProvider);

  return SearchPaginationProvider(repo, result);
});

class SearchPaginationProvider extends PagedNotifier<int, BookModel> {
  SearchPaginationProvider(BookRepository repo, String result)
      : super(
            load: (page, limit) {
              return repo.fiendBooks(
                  findBooks: result, limit: limit, page: page);
            },
            nextPageKeyBuilder: NextPageKeyBuilderDefault.mysqlPagination);
}





















// class EasyExampleNotifier extends PagedNotifier<int, Post> {

//       EasyExampleNotifier():
//       super(
//         //load is a required method of PagedNotifier
//         load: (page, limit) => 

//         //nextPageKeyBuilder is a required method of PagedNotifier
//         nextPageKeyBuilder: NextPageKeyBuilderDefault.mysqlPagination,
//       );

//       // Example of custom methods you are free to implement in StateNotifier
      
//     }

//     //create a global provider as you would normally in riverpod:
//     final  easyExampleProvider = StateNotifierProvider<EasyExampleNotifier, PagedState<int, Post>>((_) => EasyExampleNotifier());