import 'package:bookly_app/core/util/app_route.dart';
import 'package:bookly_app/core/util/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomeAppBarWidget extends StatelessWidget {
  const CustomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 36,
      ),
      child: Row(
        children: [
          Image.asset(
            ImagesPath.logoImage,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoute.searchScreenPath);
            },
            icon: const Icon(
              Icons.search,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
