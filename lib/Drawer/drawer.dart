import 'package:flutter/material.dart';
import 'dart:html' as html;

class Drawer_for_mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          drawerHeader(),
          //drawerItems(title: 'Projects', icon: null, context: context),
          drawerItems(
              title: 'Github',
              icon: null,
              context: context,
              url: 'https://github.com/biki321',
              urlname: 'Github'),
          drawerItems(
            title: 'Facebook',
            icon: null,
            context: context,
            url: 'https://www.facebook.com/?ref=tn_tnmn',
            urlname: 'Facebook',
          ),
          drawerItems(
            title: 'LinkedIn',
            icon: null,
            context: context,
            url:
                'https://www.linkedin.com/feed/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3Bjldat5g7T%2Be54xYmtVR2hQ%3D%3D',
            urlname: 'LinkedIn',
          )
        ],
      ),
    );
  }
}

Widget drawerHeader() {
  return DrawerHeader(
    padding: EdgeInsets.all(0.0),
    margin: EdgeInsets.all(0.0),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
        stops: [0.0, 1.0],
        colors: [
          Color.fromARGB(255, 9, 48, 40),
          Color.fromARGB(255, 35, 122, 87),
        ],
      ),
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 17.0,
          child: Text(
            'WELCOME',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    ),
  );
}

Widget drawerItems(
    {String title,
    IconData icon,
    BuildContext context,
    String url,
    String urlname}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18,
        color: Colors.black,
      ),
    ),
    onTap: () {
      html.window.open(url, urlname);
      Navigator.pop(context);
    },
  );
}
