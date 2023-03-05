import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_action.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_raiting.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_list_view_Item.dart';
import 'package:flutter/material.dart';

class BookDeatailsSection extends StatelessWidget {
  const BookDeatailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.29),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text(
          'The Jungel Book',
          style: Style.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const BookRaiting(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: BookAction(),
        ),
      ],
    );
  }
}
