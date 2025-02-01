import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class CustomeErrorWidget extends StatelessWidget {
  final String message;
  const CustomeErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: Styles.montserratTitle(fontsize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
