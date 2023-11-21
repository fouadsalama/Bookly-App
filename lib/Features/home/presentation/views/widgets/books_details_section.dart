import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.17,
          ),
          child: const CustomBookImage(
            imageUrl:
                'https://thumbs.dreamstime.com/b/old-book-flying-letters-magic-light-background-bookshelf-library-ancient-books-as-symbol-knowledge-history-218640948.jpg',
          ),
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
        const BookRating(
          rating: 0,
          count: 0,
        ),
        const SizedBox(height: 37),
        const BookAction(),
      ],
    );
  }
}
