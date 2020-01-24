import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LittleDes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double font_Size =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 70.0
                : 100.0;
        var textAlign =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
        var Main_Align_row =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? MainAxisAlignment.start
                : MainAxisAlignment.center;

        return Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: Main_Align_row,
                children: <Widget>[
                  Text(
                    'Hi I am',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'BIKI',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w900,
                      fontSize: font_Size,
                    ),
                  ),
                ],
              ),
              Text(
                'AI Enthusiast\nLove to Code and solve Problems.',
                textAlign: textAlign,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
