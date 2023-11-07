import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_ap_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(height: 35),
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
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 16),
          const BookRating(),
        ],
      ),
    );
  }
}
