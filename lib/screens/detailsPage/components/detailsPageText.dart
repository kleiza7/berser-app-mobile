import 'package:flutter/material.dart';

import '../../../constants.dart';

class DetailsPageText extends StatelessWidget {
  final String title;

  const DetailsPageText({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            color: dFontColor,
            fontSize: dFontSize * 1.1,
            fontWeight: FontWeight.bold));
  }
}
