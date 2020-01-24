import 'package:flutter/material.dart';
import 'package:portfolio/animated_button/AboutButton.dart';
import 'package:portfolio/profile/circle_avatar.dart';
import 'package:portfolio/profile/little_des.dart';

class ProfileTablet extends StatelessWidget {
  const ProfileTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        right: 50,
        top: 10,
        bottom: 5,
      ),
      child: Column(
        children: <Widget>[
          Circle_Avatar("assets/images/profile.jpeg"),
          SizedBox(height: 10),
          LittleDes(),
          SizedBox(
            height: 5,
          ),
          AboutButton(context),
        ],
      ),
    );
  }
}
