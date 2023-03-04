import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.borderRadius,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.fontSize,
  });
  final BorderRadiusGeometry borderRadius;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            backgroundColor: backgroundColor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: Style.textStyle16.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
