import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_list_view_item.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookListViewItem(),
          ),
        ],
      ),
    );
  }
}
