import 'package:flutter/material.dart';

class TextSlider extends StatelessWidget {
  const TextSlider({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      //هيك بصير ياخد بس بيعمل بيلد بس وقت تتغير مشان ماتعمل كل الصفحة بيلد
      animation: animationController,
      builder: (context, k) {
        return SlideTransition(
          position: slidingAnimation,
          //offest value : x , y قيمة محورية مو دبل
          child: Text(
            "FBS",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}
