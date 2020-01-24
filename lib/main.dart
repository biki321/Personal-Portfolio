import 'package:flutter/material.dart';
import 'package:portfolio/Drawer/AppBar.dart';
import 'package:portfolio/Drawer/drawer.dart';
import 'package:portfolio/profile/profile.dart';
import 'package:portfolio/About/About_me.dart';
import 'package:portfolio/proj_git.dart/projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyPortfolio',
      theme: ThemeData(
        fontFamily: 'Gayathri',
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      /* home:  */
      routes: {
        '/AboutMe': (context) => AboutMe(),
        '/Projects': (context) => Projects(),
      },
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        ),
      ),
      child: Scaffold(
        appBar:
            MediaQuery.of(context).size.width < 800 ? appBar_for_mobile : null,
        drawer:
            MediaQuery.of(context).size.width < 800 ? Drawer_for_mobile() : null,
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Profile(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
