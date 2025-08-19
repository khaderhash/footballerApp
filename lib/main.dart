import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'constatns.dart';
import 'features/splash/presntation/views/splash_view.dart';


void main() {
  runApp(const footballer());
}

class footballer extends StatelessWidget {
  const footballer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(theme:ThemeData().copyWith(
      scaffoldBackgroundColor: kPpccolor,
    ),home: SplashView());
  }
}
