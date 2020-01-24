import 'package:flutter/material.dart';
import 'package:portfolio/profile/responsive/profile_desktop.dart';
import 'package:portfolio/profile/responsive/profile_mobile.dart';
import 'package:portfolio/profile/responsive/profile_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: ProfileMobile(),
        desktop: ProfileDesktop(),
        tablet: ProfileTablet(),
    );
  }
}