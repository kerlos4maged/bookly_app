import 'package:bookly_app/core/util/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/customer_list_item.dart';
import 'package:bookly_app/features/search/view/widget/custome_search_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.read_more_rounded),
              ),
              SizedBox(
                width: 310,
                child:  CustomeSearchTextField(),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Best Result",
            style: Styles.montserratTitle(
                fontsize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomeListItemWidget(
            imageUrl: "",
          ),
        );
      },
    );
  }
}
