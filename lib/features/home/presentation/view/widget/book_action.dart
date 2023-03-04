import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Row(
        children: const [
          CustomButton(
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  16,
                ),
                bottomLeft: Radius.circular(
                  16,
                ),
              ),
              fontSize: 18,
              text: r'19.99 $',
              textColor: Colors.black),
          CustomButton(
              backgroundColor: Color(0xffEf8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  16,
                ),
                bottomRight: Radius.circular(
                  16,
                ),
              ),
              fontSize: 14,
              text: 'Free Priview',
              textColor: Colors.white),
        ],
      ),
    );
  }
}
