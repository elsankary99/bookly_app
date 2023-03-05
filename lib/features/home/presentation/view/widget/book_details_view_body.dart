import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widget/custom_button.dart';
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
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              CustomBookDetailsAppBar(),
              SizedBox(
                height: 12,
              ),
              BookDeatailsSection(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              SimlarBooksSection(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
