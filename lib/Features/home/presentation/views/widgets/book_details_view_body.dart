import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'books_action.dart';
import 'custom_book_details_ap_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.17,
                  ),
                  child: const CustomBookListViewItem(),
                ),
                const SizedBox(height: 43),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                Text(
                  'Rudyard Kipling',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 16),
                const BookRating(),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(
                  child: SizedBox(height: 50),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
