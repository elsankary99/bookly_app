import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widget/best_seller_list_view_Item.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_raiting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_Item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
        );
        // GoRouter.of(context).push(AppRouter.kHomeView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: book.volumeInfo.imageLinks?.thumbnail ??
                    'https://resizing.flixster.com/0DLs7VxQFDTC5lejVpkfLP_syW4=/206x305/v2/https://resizing.flixster.com/Lzq-nUwBS4DCJDOoSpOVTsCdJ5E=/ems.cHJkLWVtcy1hc3NldHMvdHZzZWFzb24vUlRUVjIwMTY1MC53ZWJw'),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(book.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Style.textStyle20),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors![0],
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRaiting(pageCount: book.volumeInfo.pageCount!),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
