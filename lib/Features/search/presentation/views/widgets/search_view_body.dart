import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import '../custom_search_text_failed.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFailed(),
          SizedBox(height: 16),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 16),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}