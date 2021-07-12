import 'package:safemove/data/global.dart';
import 'package:safemove/models/grid_model.dart';
import 'package:safemove/models/room_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    for (int i = 0; i < Global.grids.length; i++) {
      if (i == 7 || i == 13) {
        canvas.drawLine(
          Offset(cSize * Global.grids[i]['corridor_position'][0],
              cSize * Global.grids[i]['corridor_position'][1]),
          Offset(cSize * Global.grids[i]['corridor_position'][0],
              cSize * Global.grids[i]['corridor_position'][1]),
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
