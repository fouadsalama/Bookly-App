import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});
  final dynamic rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 13,
        ),
        const SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            color: const Color(
              0xff707070,
            ),
          ),
        ),
      ],
    );
  }
}
