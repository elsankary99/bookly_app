import 'package:bookly_app/core/widget/custom_err_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_Item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(book: state.books[index]),
              );
            },
          );
        } else if (state is NewsetBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
