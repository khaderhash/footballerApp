import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'features/splash/presntation/view/splash_view.dart';

void main() {
  runApp(const footballer());
}

class footballer extends StatelessWidget {
  const footballer({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashView());
  }
}
