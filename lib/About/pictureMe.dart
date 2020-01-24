import 'package:flutter/material.dart';

class PictureMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      
      child: Container(
        height: MediaQuery.of(context).size.height * .50,
        width: MediaQuery.of(context).size.width * .22,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/profile.jpeg",
            ),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
