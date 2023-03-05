import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          suffix: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: 0.6,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            ),
          ),
          enabledBorder: outLineBorder(),
          focusedBorder: outLineBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        12,
      ),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
