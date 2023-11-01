import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideTransition,
  });

  final Animation<Offset> slideTransition;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideTransition,
      builder: (context, _) {
        return SlideTransition(
          position: slideTransition,
          child: const Text(
            'Reed Free Book',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
