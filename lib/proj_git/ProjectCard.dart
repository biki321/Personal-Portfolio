import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard(
      {this.title,
      this.des,
      this.year,
      this.madeby,
      this.imagePath,
      this.card_height,
      this.card_width,
      key})
      : super(key: key);
  String title, des, imagePath, year, madeby;
  double card_height, card_width;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color.fromARGB(255, 43, 61, 89),
      child:Center(
       child: Container(
        //width: ,
        //height: ,
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  title,
                  textScaleFactor: 0.6,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 127,
                  height: 102,
                  child: Text(
                    des,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "***$year  $madeby",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: 128,
                    height: 120,
                    child: Image.asset(
                      "assets/images/profile.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),

      /*
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Color.fromARGB(255, 43, 61, 89),
      child: Container(
        width: card_width, //303
        height: card_height, //403
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: <Widget>[
                 Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    elevation: 4,
                    child: Container(
                      height: card_height * 174/403,
                      width: card_width * 279/303,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/profile.jpeg",
                          ),
                        ),
                      ),
                    ),
                  ),
               
                Container(
                  width: card_width * (278 / 303),
                  height: card_height * (93 / 403),
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "---$year  $madeby",
                          style: TextStyle(
                            color: Color.fromARGB(255, 237, 74, 128),
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  child: Center(
                    child:  Text(
                        des,
                        style: TextStyle(
                          color: Color.fromARGB(255, 182, 198, 224),
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      */
    );
  }
}
