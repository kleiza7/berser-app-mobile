import 'package:berser_app_mobile/models/project.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/detailsPageBody.dart';
import 'components/detailsPageImage.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key, this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgColor,
          title: Text("${project.projectName}"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            color: Colors.white,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(color: bgColor),
            width: size.width,
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  DetailsPageImage(image: project.image),
                  SizedBox(height: 12),
                  DetailsPageBody(project: project),
                ],
              ),
            )));
  }
}
