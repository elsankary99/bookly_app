import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.pageCount,
  });
  final int pageCount;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDF4D),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text('4.8',
            style: Style.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '( $pageCount )',
            style: Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
