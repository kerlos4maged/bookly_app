import 'package:bookly_app/features/books/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/features/books/presentation/view/widgets/similler_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SimillerBookSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
