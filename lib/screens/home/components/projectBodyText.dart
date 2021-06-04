import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProjectBodyText extends StatelessWidget {
  final String title;

  const ProjectBodyText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            color: dFontColor,
            fontSize: dFontSize,
            fontWeight: FontWeight.bold));
  }
}
