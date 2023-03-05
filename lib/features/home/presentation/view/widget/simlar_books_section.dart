import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widget/simlar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimlarBooksSection extends StatelessWidget {
  const SimlarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'You Can Also Like',
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimlarBooksListView(),
      ],
    );
  }
}
