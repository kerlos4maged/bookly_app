import 'package:bookly_app/core/errors/widgets/error_widgets.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/customer_list_item.dart';
import 'package:bookly_app/features/home/presentation/view_models/features_cubit/features_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/features_cubit/features_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubit, BooksStates>(
      builder: (context, state) {
        if (state is SuccessBooks) {
          return SizedBox(
            // this is main height for this listview
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(right: 8.0,left: 8),
                  child: CustomeListItemWidget(
                    imageUrl: state.books[index].volumeInfo.imageLinks.smallThumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is ErrorBookState) {
          return CustomeErrorWidget(message: state.message);
        } else {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
      },
    );
  }
}
