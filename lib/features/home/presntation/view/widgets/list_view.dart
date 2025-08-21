import 'package:flutter/material.dart';

import 'coustom_list_view.dart';


class ListViewPlayer extends StatelessWidget {
  const ListViewPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25),
            child: CoustomListView(),
          );
        },
      ),
    );
  }
}
