import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/widget/custom_err_widget.dart';
import 'package:bookly_app/core/widget/custom_loading_indecator.dart';
import 'package:bookly_app/features/home/presentation/manger/featuerd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturesBooklyListView extends StatelessWidget {
  const FeaturesBooklyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatuerdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            'https://resizing.flixster.com/0DLs7VxQFDTC5lejVpkfLP_syW4=/206x305/v2/https://resizing.flixster.com/Lzq-nUwBS4DCJDOoSpOVTsCdJ5E=/ems.cHJkLWVtcy1hc3NldHMvdHZzZWFzb24vUlRUVjIwMTY1MC53ZWJw'),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatuerdBooksFailuer) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
