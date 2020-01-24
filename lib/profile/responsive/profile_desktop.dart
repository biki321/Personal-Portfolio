import 'package:flutter/material.dart';
import 'package:portfolio/animated_button/AboutButton.dart';
import 'package:portfolio/animated_button/FacebookButton.dart';
import 'package:portfolio/animated_button/GitButton.dart';
import 'package:portfolio/animated_button/LinkedInButton.dart';
import 'package:portfolio/animated_button/ProjectButton.dart';
import 'package:portfolio/profile/circle_avatar.dart';
import 'package:portfolio/profile/little_des.dart';

class ProfileDesktop extends StatelessWidget {
  const ProfileDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 200, right: 20, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //ProjectButton(context),
              SizedBox(
                width: 8,
              ),
              AboutButton(context),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Circle_Avatar("assets/images/profile.jpeg"),
              SizedBox(width: 115),
              Expanded(
                child: LittleDes(),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GitButton,
              SizedBox(
                width: 10.0,
              ),
              LinkedInButton,
              SizedBox(
                width: 10.0,
              ),
              FacebookButton,
            ],
          ),
        ],
      ),
    );
  }
}
