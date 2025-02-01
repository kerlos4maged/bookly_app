import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const BookRate({
    super.key,
    required this.mainAxisAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Text("4.8"),
        SizedBox(
          width: 5,
        ),
        Text("(2390)"),
      ],
    );
  }
}
