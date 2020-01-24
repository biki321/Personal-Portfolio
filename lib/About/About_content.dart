import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var col_cross_alignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;
        var row_main_alignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? MainAxisAlignment.start
                : MainAxisAlignment.center;

        double font_size_mobile1 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 60
                : 70;
        double font_size_mobile2 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 90
                : 150;
        double font_size_mobile3 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 22
                : 30;
        var font_weight_mobile1 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? FontWeight.w500
                : FontWeight.w700;
        var font_weight_mobile2 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? FontWeight.w700
                : FontWeight.w900;
        var font_weight_mobile3 =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? FontWeight.w200
                : FontWeight.w400;
        return Container(
          child: Column(
            crossAxisAlignment: col_cross_alignment,
            children: <Widget>[
              Row(
                mainAxisAlignment: row_main_alignment,
                children: <Widget>[
                  Text(
                    'Who I ',
                    style: TextStyle(
                      fontSize: font_size_mobile1,
                      fontWeight: font_weight_mobile1,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'am',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: font_size_mobile2,
                      fontWeight: font_weight_mobile2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
                SizedBox(
                  
                  width: 400,
                child: Text(
                "Hi I am Biki, 2nd year ETE student.\n I love coding, exploring new technologies.\n I am interested in AI. I have \ndone some work on it. Django \nwas my first framework, Flutter \nis second. I am open for tech \noppurtunities.",
                style: TextStyle(
                  color: Color.fromARGB(255, 197, 235, 227),
                  fontSize: font_size_mobile3,
                  fontWeight: font_weight_mobile3,
                ),
              ),
              ),
           
             
              
            ],
          ),
        );
      },
    );
  }
}
