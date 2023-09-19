import 'package:bookly_app/provider/search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends ConsumerWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 70,
      child: TextField(
        onSubmitted: (value) {
          ref.read(findProvider.notifier).state = value;
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          hintText: 'Search',
          suffixIcon: IconButton(
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
