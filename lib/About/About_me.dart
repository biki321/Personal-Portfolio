import 'package:flutter/material.dart';
import 'package:portfolio/About/About_content.dart';
import 'package:portfolio/About/pictureMe.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMe extends StatelessWidget {
  Widget desktop_view = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      AboutContent(),
      SizedBox(
        width: 10,
      ),
      PictureMe(),
    ],
  );
  Widget mobile_view = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      AboutContent(),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          decoration: BoxDecoration(
                
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          stops: [0.0, 1.0],
          colors: [
            Color.fromARGB(255, 9, 48, 40),
            Color.fromARGB(255, 35, 122, 87),
          ],
        )
              ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SingleChildScrollView(
                child: AnimatedPadding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.2),
                  duration: Duration(seconds: 1),

                  child: Center(
                    child: ScreenTypeLayout(
                      desktop: desktop_view,
                      mobile: mobile_view,
                      tablet: mobile_view,
                    ),
                  ),

                  // padding: MediaQuery.of(context).size.width*0.25,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
