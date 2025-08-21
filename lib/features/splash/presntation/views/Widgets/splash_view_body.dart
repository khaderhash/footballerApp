import 'package:clean_arch/features/home/presntation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constatns.dart';
import '../../../../../core/utlils/Assets.dart';
import 'Text_Slider.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //بهندل الrate لغير ال value هو يلي بحدد ايمت القيمة رح تطلع singletickerproviderstatemixin
  // وكمان بستخدمو لما يكون عندي animation controller واحد اذا اكتر بستخدم غير شي (دور عن هالفكرة)
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsImage.logo),
        const SizedBox(height: 2),
        TextSlider(
          animationController: animationController,
          slidingAnimation: slidingAnimation,
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      //my duration 1 minute
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(2, 2),
      end: Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>HomeView(),transition: Transition.fade,duration: kPtransactionDuration);
    });
  }
}
