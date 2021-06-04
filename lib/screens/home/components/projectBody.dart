import 'package:berser_app_mobile/models/project.dart';
import 'package:flutter/material.dart';

import 'projectBodyText.dart';

class ProjectBody extends StatelessWidget {
  const ProjectBody({
    Key key,
    @required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProjectBodyText(title: "Group Name : ${project.groupName}"),
            SizedBox(height: 6),
            ProjectBodyText(title: "Title : ${project.title}"),
            SizedBox(height: 6),
            ProjectBodyText(
                title: "Num of Developers : ${project.numOfDevelopers}")
          ],
        ),
        ProjectBodyText(title: "${project.likes.length} Likes")
      ],
    );
  }
}
