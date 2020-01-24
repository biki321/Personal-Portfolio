import 'package:flutter/material.dart';

import 'package:portfolio/proj_git.dart/ProjectCard.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Projects extends StatelessWidget {
  List<ProjectCard> projects_cards = [
    /*ProjectCard(
      card_height: 197,
      card_width: 295,
      title: "Binary Classification",
      des:
          "A binary Classification model to classify between Swift and Wagonar",
      year: "2019",
      madeby: "Self Made",
      imagePath: "assets/images/profile.jpeg",
    ), */
    ProjectCard(
      card_height: 197,
      card_width: 295,
      title: "CycleGan",
      des: "Implementation of cyclegan that change a cat pic into tiger face",
      year: "2019",
      madeby: "Self Made",
      imagePath: "assets/images/profile.jpeg",
    ),
    ProjectCard(
      card_height: 197,
      card_width: 295,
      title: "Portfoilio",
      des: "A Potfolio web app made with Flutter web",
      year: "2019",
      madeby: "Self Made",
      imagePath: "assets/images/profile.jpeg",
    ),
    ProjectCard(
      card_height: 197,
      card_width: 295,
      title: "NoteStore",
      des:
          "A Webapp where students can upload and download notes respective of their branch/sem",
      year: "2018",
      madeby: "Self Made",
      imagePath: "assets/images/profile.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 295 / 197,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: projects_cards,
      ),
    );
  }
}
