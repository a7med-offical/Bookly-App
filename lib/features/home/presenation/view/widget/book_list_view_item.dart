import 'package:app/core/utlis/image.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(AssetData.KprimaryImage)),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}