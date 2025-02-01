import 'package:bookly_app/core/util/app_route.dart';
import 'package:bookly_app/core/util/assets.dart';
import 'package:bookly_app/features/splash/presentation/view/widget/sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBodyData extends StatefulWidget {
  const SplashScreenBodyData({
    super.key,
  });

  @override
  State<SplashScreenBodyData> createState() => _SplashScreenBodyDataState();
}

class _SplashScreenBodyDataState extends State<SplashScreenBodyData>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigatToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // stretch in crossAxisAlignment mean the child take the biggest width can will take it in this case i mean take width for the scaffold
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImagesPath.logoImage),
        AnimatedCustomeWidget(
          slidingAnimation: slidingAnimation,
        )
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
      animationController,
    );

    animationController.forward();
  }

  @override
  void dispose() {
    // animationController.dispose();
    super.dispose();
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        GoRouter.of(context).push(AppRoute.homeviewPath);
      },
    );
  }
}
