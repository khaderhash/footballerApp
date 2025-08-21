import 'package:clean_arch/core/utlils/Assets.dart';
import 'package:clean_arch/features/home/presntation/view/widgets/coustom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utlils/styles.dart';
import 'coustom_appbar.dart';
import 'list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoustomAppbar(),
          ListViewPlayer(),
          SizedBox(height: 50,),
          Text("dd", style: Styles.titleMedium),
        ],
      ),
    );
  }
}
