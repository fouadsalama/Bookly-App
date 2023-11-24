import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.17,
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        Text(
          bookModel.volumeInfo.authors![0],
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            color: Colors.white.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(
          rating: 0,
          count: bookModel.volumeInfo.pageCount ?? 0,
        ),
        const SizedBox(height: 37),
        const BookAction(),
      ],
    );
  }
}
