import 'package:bookly_app/core/errors/widgets/error_widgets.dart';
import 'package:bookly_app/core/util/loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_view.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_cubit/newest_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_cubit/newest_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestFeaturesBooks, NewestBooksStates>(
      builder: (context, state) {
        if (state is SuccessNewestBooks) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: BestSellerView(
                state.books[index],
              ),
            ),
          );
        } else if (state is ErrorNewestBookstate) {
          return CustomeErrorWidget(message: state.message);
        } else {
          return const CustomeLoadingWidget();
        }
      },
    );
  }
}
