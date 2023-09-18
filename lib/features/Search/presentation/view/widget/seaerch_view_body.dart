import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Search/presentation/view/widget/custom_search_text_feaild.dart';
import 'package:bookly_app/features/Search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          SearchResultListView()
        ],
      ),
    );
  }
}
