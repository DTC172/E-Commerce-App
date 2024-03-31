import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurse = Offset(0, size.height - 20);
    final lastCurse = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurse.dx, firstCurse.dy, lastCurse.dx, lastCurse.dy);

    final secondfirstCurse = Offset(0, size.height - 20);
    final secondlastCurse = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstCurse.dx, secondfirstCurse.dy,
        secondlastCurse.dx, secondlastCurse.dy);

    final thirdfirstCurse = Offset(size.width, size.height - 20);
    final thirdlastCurse = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstCurse.dx, thirdfirstCurse.dy,
        thirdlastCurse.dx, thirdlastCurse.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
