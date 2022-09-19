

import 'package:flutter/material.dart';

class ArcClipForSignUp extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path path=Path();
    path.quadraticBezierTo(size.width/2, size.height * 0.8 , size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

}