import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utils_portfolio/widgets/animated_text.dart';
import 'package:screen_utils_portfolio/widgets/personal_info.dart';
import 'package:screen_utils_portfolio/widgets/project_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AnimatedTextWidget(),
              SizedBox(height: 20.h),
              const PersonalInfo(),
              SizedBox(height: 20.h),
              const ProjectsSection(),
            ],
          ),
        ),
      ),
    );
  }
}


