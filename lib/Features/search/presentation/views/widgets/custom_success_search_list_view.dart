import 'package:flutter/material.dart';

import '../../../../../core/utils/manger/search_books_cubit/search_books_cubit.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class CustomSuccessSearchListView extends StatelessWidget {
  const CustomSuccessSearchListView({
    super.key,
    required this.searchBooksSuccess,
  });
  final SearchBooksSuccess searchBooksSuccess;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: searchBooksSuccess.books.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(
              bookModel: searchBooksSuccess.books[index],
            ),
          );
        });
  }
}
