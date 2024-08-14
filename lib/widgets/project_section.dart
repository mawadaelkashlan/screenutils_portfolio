
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen_utils_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 300.h,
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            children: const [
              ProjectCard(
                  title: 'WEVR',
                  description:
                      'It is an environment to serve the customer by facilitating the process of buying and renting apartments. Where the environment works as a broker, through a mobile application .'),
              ProjectCard(
                  title: 'EasyPos',
                  description:
                      'Easy POS is a Point of Sale system designed to simplify sales processes for small to medium-sized businesses. This Flutter-based application offers an intuitive interface and efficient data management to streamline operations.'),
              ProjectCard(
                  title: 'EduVista',
                  description:
                      'EduVista is An online courses app built with Flutter is a mobile application designed to provide users with access to educational content, courses, and learning resources directly from their smartphones or tablets. Developed using the Flutter framework, this app offers a smooth, cross-platform user experience on both Android and iOS devices.'),
              ProjectCard(
                  title: 'Graston',
                  description: 'Medical physiotherapy application , SA'),
              ProjectCard(
                  title: 'Senior',
                  description: 'GPA calculator support various scales'),
            ],
          ),
        ),
      ],
    );
  }
}


