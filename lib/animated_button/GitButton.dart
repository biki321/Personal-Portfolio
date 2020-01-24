import 'package:flutter/material.dart';
import "dart:html" as html;

Widget GitButton = RaisedButton(
  onPressed: (){
    html.window.open('https://github.com/biki321', 'Github');
  },
  color: Colors.pink, // this color will act if button is enabled=true
  textColor: Colors.white,
  elevation: 0.0,
  hoverColor: Colors.pink[300],

  padding: EdgeInsets.all(10.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Text(
    'GITHUB',
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 25,
      letterSpacing: 1,
    ),
  ),
);
