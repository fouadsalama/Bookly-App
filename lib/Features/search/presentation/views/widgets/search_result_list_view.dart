import 'package:bookly_app/core/utils/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return const CustomLoadingListView();
        }
      },
    );
  }
}
