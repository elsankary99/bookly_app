import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Search/presentation/view/widget/custom_search_text_feaild.dart';
import 'package:bookly_app/features/Search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
          const CustomSearchTextField(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchResultListView()
        ],
      ),
    );
  }
}
