import 'package:bookly_app/core/utils/manger/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../custom_search_text_failed.dart';
import 'custom_success_search_list_view.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextFailed(
            searchController: controller,
          ),
          const SizedBox(height: 16),
          const Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<SearchBooksCubit, SearchBooksState>(
              builder: (context, state) {
                if (state is SearchBooksSuccess) {
                  return CustomSuccessSearchListView(searchBooksSuccess: state);
                } else if (state is SearchBooksLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SearchBooksFailure) {
                  return const Center(child: Text('No Result Found'));
                } else {
                  return const SearchResultListView();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
