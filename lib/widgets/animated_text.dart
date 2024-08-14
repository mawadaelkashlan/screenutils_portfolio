import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: const AssetImage('assets/img.jpeg'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(
              width: 20,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Mawada Elkashlan'),
                TypewriterAnimatedText('Flutter Developer'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ],
        ),
      ),
    );
  }
}