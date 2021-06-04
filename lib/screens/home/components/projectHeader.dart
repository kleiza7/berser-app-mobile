import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({
    Key key,
    this.projectName,
  }) : super(key: key);

  final String projectName;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(width: 1))),
        child: Center(
          child: Text(projectName,
              style: TextStyle(
                  color: dFontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: dFontSize * 1.5)),
        ));
  }
}
