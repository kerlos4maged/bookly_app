import 'package:bookly_app/core/util/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custome_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custome_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CustomeAppBarWidget(),
              const FeaturesBooksListView(),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16),
                child: Text(
                  "Best Seller",
                  style: Styles.montserratTitle(
                    fontsize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
