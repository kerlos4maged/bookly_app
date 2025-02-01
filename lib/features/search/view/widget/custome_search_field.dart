import 'package:flutter/material.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorderTextField(),
        focusedBorder: outlineInputBorderTextField(),
        hintText: "search",
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.search,
            size: 25,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorderTextField() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
