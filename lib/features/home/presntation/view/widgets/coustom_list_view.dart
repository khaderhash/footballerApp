import 'package:flutter/material.dart';

class CoustomListView extends StatelessWidget {
  const CoustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/image/test-image.jpg'),
          ),
        ),
      ),
    );
  }
}
