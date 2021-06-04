import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class DetailsPageImage extends StatelessWidget {
  final String image;

  const DetailsPageImage({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img;
    Uint8List imgBytes;
    if (image != "") {
      img = image.split(",")[1];
      imgBytes = Base64Decoder().convert(img);
    }

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(20.0),
      color: Colors.white,
      width: size.width * 0.5,
      child: (imgBytes != null
          ? Image.memory(imgBytes)
          : Center(
              child: Icon(
              Icons.wysiwyg_rounded,
              size: size.width * 0.5,
            ))),
    );
  }
}
