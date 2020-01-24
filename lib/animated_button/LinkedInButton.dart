import 'package:flutter/material.dart';
import 'dart:html' as html;

Widget LinkedInButton = Container(
  height: 50.0,
  child: GestureDetector(
    
    onTap: () {
      html.window.open(
          'https://www.linkedin.com/feed/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3Bjldat5g7T%2Be54xYmtVR2hQ%3D%3D',
          'LinkedIn');
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF05A22),
          style: BorderStyle.solid,
          width: 2.0,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "LINKEDIN",
              style: TextStyle(
                color: Color(0xFFF05A22),
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ),
          )
        ],
      ),
    ),
  ),
);
