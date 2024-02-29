import 'package:app/core/utlis/image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetData.KprimaryImage,width: 120,),
        const Spacer(),
        const IconButton(
            onPressed: null, icon: Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white,))
      ],
    );
  }
}