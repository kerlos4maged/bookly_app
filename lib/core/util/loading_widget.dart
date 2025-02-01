import 'package:flutter/material.dart';
import 'package:shimmer_loading/shimmer_loading.dart';

class CustomeLoadingWidget extends StatelessWidget {
  const CustomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ShimmerLoading(
        child: Text("Test ShimmerLOading"),
      ),
    );
  }
}
