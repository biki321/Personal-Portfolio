import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Circle_Avatar extends StatelessWidget {
  Circle_Avatar(this.path, {Key key}) : super(key: key);
  String path;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var radius;
        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
          radius = 160;
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.Tablet) {
          radius = 100;
        } else
          radius = 85;

        return CircleAvatar(
          backgroundImage: ExactAssetImage(path),
          radius: radius,
        );
      },
    );
  }
}
