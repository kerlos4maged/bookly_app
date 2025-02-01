import 'package:bookly_app/core/util/app_route.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rate.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerView extends StatelessWidget {
  final BookModel _bookModel;
  const BestSellerView(
    this._bookModel, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.bookDetailsScreenPath);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              // the probability for hight and width  and this size will take it from the parent widget and in this case this is size box widget
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                imageUrl: _bookModel.volumeInfo.imageLinks.thumbnail,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      _bookModel.volumeInfo.title!,
                      maxLines: 2,
                      style: Styles.montserratTitle(fontsize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and the Goblet of fire ",
                      maxLines: 2,
                      style: Styles.montserratTitle(
                        fontsize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Text("free"),
                      Spacer(),
                      BookRate(
                        mainAxisAlignment: MainAxisAlignment.end,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
