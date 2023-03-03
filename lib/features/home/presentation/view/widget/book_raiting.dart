import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: Color(0xffFFDF4D),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text('4.8', style: Style.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Text('( 2390 )',
            style: Style.textStyle14.copyWith(color: const Color(0xff707070))),
      ],
    );
  }
}
