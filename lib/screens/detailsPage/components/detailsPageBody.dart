import 'package:berser_app_mobile/models/project.dart';
import 'package:flutter/material.dart';

import 'detailsPageText.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({
    Key key,
    @required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailsPageText(title: "Group Name : ${project.groupName}"),
        DetailsPageText(title: "Project Type : ${project.projectType}"),
        DetailsPageText(
            title: "Number of Developers : ${project.numOfDevelopers}"),
        DetailsPageText(
            title: "Number of Requirements : ${project.numOfRequirements}"),
        DetailsPageText(title: "Title : ${project.title}"),
        DetailsPageText(title: "Description : ${project.description}"),
        DetailsPageText(title: "Github Link : ${project.gitHub}"),
        DetailsPageText(title: "Creator : ${project.name}"),
        DetailsPageText(title: "Likes : ${project.likes.length}"),
      ],
    );
  }
}
