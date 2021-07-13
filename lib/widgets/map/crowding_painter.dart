import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safemove/services/data_manager.dart';

class CrowdingPainter extends CustomPainter {
  var model;
  double cSize;
  Paint paintt = Paint()
    ..color = Color.fromRGBO(255, 0, 0, 0.3)
    ..strokeWidth = 8.2
    ..strokeCap = StrokeCap.square;

  CrowdingPainter(this.model, this.cSize);

  @override
  void paint(final Canvas canvas, final Size size) {
    for (int i = 0; i < DataManager.gridsData.length; i++) {
      if (DataManager.gridsData[i].crowding > 1) {
        canvas.drawLine(
          Offset(cSize * DataManager.gridsData[i].corridorPosition[0],
              cSize * DataManager.gridsData[i].corridorPosition[1]),
          Offset(cSize * DataManager.gridsData[i].corridorPosition[0],
              cSize * DataManager.gridsData[i].corridorPosition[1]),
          paintt,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
