
import 'package:app/features/home/presenation/view/widget/book_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureBookListViewItem extends StatelessWidget {
  const FeatureBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
   child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(right:8.0),
            child:  BookListViewItem(),
          );
        },
      ),
    );
  }
}
