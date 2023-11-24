import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              textColor: Colors.black,
              text: 'Free',
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              fontSize: 16,
              textColor: Colors.white,
              text: ' preview',
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
