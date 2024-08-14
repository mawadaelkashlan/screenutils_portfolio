
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Text('Hi, I\'m Mawada Elkashlan', style: TextStyle(fontSize: 20.sp)),
        SizedBox(height: 10.h),
        Text(
          'A passionate Flutter developer specializing in creating beautiful and functional mobile applications.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp),
        ),
        SizedBox(height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.github),
              onPressed: () => _launchURL('https://github.com/mawadaelkashlan'),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              onPressed: () => _launchURL(
                  'https://www.linkedin.com/in/mawada-elkashlan-08561b1b3/'),
            ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.facebook),
              onPressed: () =>
                  _launchURL('https://web.facebook.com/mawada.elkashlan.3'),
            ),
          ],
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
