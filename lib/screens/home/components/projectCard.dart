import 'package:berser_app_mobile/models/project.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'projectBody.dart';
import 'projectHeader.dart';
import 'projectImage.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key key,
    @required this.size,
    @required this.project,
    this.press,
  }) : super(key: key);

  final Size size;
  final Project project;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: bgColor),
        width: size.width - 48,
        child: Column(
          children: [
            ProjectHeader(projectName: project.projectName),
            ProjectImage(image: project.image),
            ProjectBody(project: project),
            SizedBox(height: 20),
            FlatButton(
                onPressed: press,
                child: Container(
                    width: size.width * 0.8,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    alignment: Alignment.center,
                    child: Text("Go to Details")))
          ],
        ),
      ),
    );
  }
}
