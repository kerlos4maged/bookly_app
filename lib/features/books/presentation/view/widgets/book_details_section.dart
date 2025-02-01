import 'package:bookly_app/core/util/styles.dart';
import 'package:bookly_app/features/books/presentation/view/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/books/presentation/view/widgets/books_actions.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rate.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/customer_list_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const BookDetailsCustomAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: const CustomeListItemWidget(
            imageUrl: "",
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "The Jungle Book",
          style:
              Styles.montserratTitle(fontsize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.montserratTitle(fontsize: 18).copyWith(
            color: Colors.grey[400],
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const BookRate(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
