import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utlils/Assets.dart';
class CoustomAppbar extends StatelessWidget {
  const CoustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsImage.nameofapp, height: 150, width: 150),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.squareFontAwesome),
          ),
        ],
      ),
    );
  }
}
