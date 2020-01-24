import 'package:flutter/material.dart';
import 'package:portfolio/animated_button/AboutButton.dart';
import 'package:portfolio/profile/circle_avatar.dart';
import 'package:portfolio/profile/little_des.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
          child: Column(
            children: <Widget>[
              Circle_Avatar("assets/images/profile.jpeg"),
              SizedBox(height: 5),
              LittleDes(),
              SizedBox(height: 5),
              AboutButton(context),
            ],
          ),
        );
     
    /*
    return Container(
      padding: EdgeInsets.only( top: 5, left: 10, right: 10, bottom: 5),
      child: ListView(
        children: <Widget>[

          Circle_Avatar("assets/images/profile.jpeg"),
          SizedBox(height: 5),
          LittleDes(),
        ],
      ),
    );
    */
  }
}
