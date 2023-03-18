import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_action.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_deatails_section.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_raiting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_Item.dart';
import 'package:bookly_app/features/home/presentation/view/widget/simlar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widget/simlar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(
                height: 12,
              ),
              BookDeatailsSection(bookModel: bookModel),
              const Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              const SimlarBooksSection(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
