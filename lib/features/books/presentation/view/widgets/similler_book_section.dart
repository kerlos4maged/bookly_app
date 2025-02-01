import 'package:bookly_app/core/util/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custome_list.dart';
import 'package:flutter/material.dart';

class SimillerBookSection extends StatelessWidget {
  const SimillerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like",
            style: Styles.montserratTitle(fontsize: 16),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const FeaturesBooksListView(),
      ],
    );
  }
}
