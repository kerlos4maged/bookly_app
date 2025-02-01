import 'package:flutter/material.dart';

class AnimatedCustomeWidget extends StatelessWidget {
  const AnimatedCustomeWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            "Free Book",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
