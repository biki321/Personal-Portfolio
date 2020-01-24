import 'package:flutter/material.dart';

Widget ProjectButton(BuildContext context) => Container(
    height: 50.0,
    child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/Projects');
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
                           "PROJECTS",
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