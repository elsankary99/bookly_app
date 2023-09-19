import 'package:bookly_app/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view_Item.dart';
import 'package:bookly_app/provider/search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

class SearchResultListView extends ConsumerWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ref.watch(findProvider).isNotEmpty
          ? RiverPagedBuilder<int, BookModel>.autoDispose(
              provider: searchPaginationProvider,
              pagedBuilder: (controller, builder) => PagedListView(
                  pagingController: controller, builderDelegate: builder),
              itemBuilder: (context, item, index) =>
                  BestSellerListViewItem(book: item),
              firstPageKey: 1)
          : const Center(
              child: Text(
              "Start searching",
              style: TextStyle(fontSize: 20),
            )),
    );
  }
}
 
// ref.watch(searchProvider).when(
          //     data: (data) => ListView.builder(
          //           padding: EdgeInsets.zero,
          //           itemCount: 10,
          //           itemBuilder: (context, index) {
          //             return Padding(
          //               padding: const EdgeInsets.symmetric(vertical: 10),
          //               child: BestSellerListViewItem(book: data[index]),
          //             );
          //           },
          //         ),
          //     error: (error, _) => Center(child: Text(error.toString())),
          //     loading: () => const Center(child: CircularProgressIndicator()))