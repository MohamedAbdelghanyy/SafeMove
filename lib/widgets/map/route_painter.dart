import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/room_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutePainter extends CustomPainter {
  RouteData routeData;
  double cSize;
  Paint paintt = Paint()
    ..color = Colors.blue[900]
    ..strokeWidth = 3
    ..strokeCap = StrokeCap.round;
  bool isDrawingStarted = false, isRoomXFound = false, isRoomYFound = false;

  RoutePainter(this.routeData, this.cSize);

  @override
  void paint(final Canvas canvas, final Size size) {
    /*List xy = [0.0362, -0.256];
    print('[' + xy[0].toString() + ', ' + xy[1].toString());
    canvas.drawLine(Offset(cSize * xy[0], cSize * xy[1]),
        Offset(cSize * xy[0], cSize * xy[1]), paintt);*/

    canvas.drawLine(
        Offset(cSize * routeData.roomX.doorPosition[0],
            cSize * routeData.roomX.doorPosition[1]),
        Offset(cSize * routeData.roomX.corridorPosition[0],
            cSize * routeData.roomX.corridorPosition[1]),
        paintt);

    canvas.drawLine(
        Offset(cSize * routeData.roomY.doorPosition[0],
            cSize * routeData.roomY.doorPosition[1]),
        Offset(cSize * routeData.roomY.corridorPosition[0],
            cSize * routeData.roomY.corridorPosition[1]),
        paintt);

    for (int i = 0; i < Global.corridorCheckPoint.length; i++) {
      if (routeData.roomX.corridorPosition[0] ==
              Global.corridorCheckPoint[i]['position'][0] &&
          routeData.roomX.corridorPosition[1] ==
              Global.corridorCheckPoint[i]['position'][1] &&
          !isRoomXFound) {
        isRoomXFound = true;
        isDrawingStarted = true;
      }
      if (routeData.roomY.corridorPosition[0] ==
              Global.corridorCheckPoint[i]['position'][0] &&
          routeData.roomY.corridorPosition[1] ==
              Global.corridorCheckPoint[i]['position'][1] &&
          !isRoomYFound) {
        isRoomYFound = true;
        isDrawingStarted = true;
      }
      if (!(isRoomXFound && isRoomYFound) &&
          isDrawingStarted &&
          (i + 1 < Global.corridorCheckPoint.length)) {
        canvas.drawLine(
          Offset(cSize * Global.corridorCheckPoint[i]['position'][0],
              cSize * Global.corridorCheckPoint[i]['position'][1]),
          Offset(cSize * Global.corridorCheckPoint[i + 1]['position'][0],
              cSize * Global.corridorCheckPoint[i + 1]['position'][1]),
          paintt,
        );
      }
    }
    isRoomXFound = false;
    isRoomYFound = false;
    isDrawingStarted = false;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
