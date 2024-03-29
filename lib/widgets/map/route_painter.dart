import 'package:safemove/models/room_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutePainter extends CustomPainter {
  var model;
  RouteData routeData;
  double cSize;
  Paint paintt = Paint()
    ..color = Colors.blue[900]
    ..strokeWidth = 3
    ..strokeCap = StrokeCap.round;
  bool isDrawingStarted = false, isRoomXFound = false, isRoomYFound = false;
  int safeRoomsCount = 0;
  int unSafeRoomsCount = 0;

  RoutePainter(this.model, this.cSize) {
    this.routeData = model.routeData;
  }

  @override
  void paint(final Canvas canvas, final Size size) {
    /*  List xy = [-0.329, 0.425];
    print('[' + xy[0].toString() + ', ' + xy[1].toString());
    canvas.drawLine(Offset(cSize * xy[0], cSize * xy[1]),
        Offset(cSize * xy[0], cSize * xy[1]), paintt);

    List xx = [-0.355, 0.425];
    print('[' + xx[0].toString() + ', ' + xx[1].toString());
    canvas.drawLine(Offset(cSize * xx[0], cSize * xx[1]),
        Offset(cSize * xx[0], cSize * xx[1]), paintt);

    List aa = [-0.38, 0.425];
    print('[' + aa[0].toString() + ', ' + aa[1].toString());
    canvas.drawLine(Offset(cSize * aa[0], cSize * aa[1]),
        Offset(cSize * aa[0], cSize * aa[1]), paintt);
        
    List ab = [-0.329, 0.39];
    print('[' + ab[0].toString() + ', ' + ab[1].toString());
    canvas.drawLine(Offset(cSize * ab[0], cSize * ab[1]),
        Offset(cSize * ab[0], cSize * ab[1]), paintt);
    */

    //Draw route from door position to corridor position of ROOM X
    canvas.drawLine(
        Offset(cSize * routeData.roomX.doorPosition[0],
            cSize * routeData.roomX.doorPosition[1]),
        Offset(cSize * routeData.roomX.corridorPosition[0],
            cSize * routeData.roomX.corridorPosition[1]),
        paintt);

    //Draw route from door position to corridor position of ROOM Y
    canvas.drawLine(
        Offset(cSize * routeData.roomY.doorPosition[0],
            cSize * routeData.roomY.doorPosition[1]),
        Offset(cSize * routeData.roomY.corridorPosition[0],
            cSize * routeData.roomY.corridorPosition[1]),
        paintt);

    // Draw route
    for (int i = 0; i < model.rooms.length; i++) {
      if (routeData.roomX.corridorPosition[0] ==
              model.rooms[i].corridorPosition[0] &&
          routeData.roomX.corridorPosition[1] ==
              model.rooms[i].corridorPosition[1] &&
          !isRoomXFound) {
        isRoomXFound = true;
        isDrawingStarted = true;
      }
      if (routeData.roomY.corridorPosition[0] ==
              model.rooms[i].corridorPosition[0] &&
          routeData.roomY.corridorPosition[1] ==
              model.rooms[i].corridorPosition[1] &&
          !isRoomYFound) {
        isRoomYFound = true;
        isDrawingStarted = true;
      }
      if (!(isRoomXFound && isRoomYFound) &&
          isDrawingStarted &&
          (i + 1 < model.rooms.length)) {
        if (model.rooms[i + 1].name != "Turn") {
          if (model.rooms[i + 1].isSafe) {
            safeRoomsCount += 1;
          } else {
            unSafeRoomsCount += 1;
          }
        }
        canvas.drawLine(
          Offset(cSize * model.rooms[i].corridorPosition[0],
              cSize * model.rooms[i].corridorPosition[1]),
          Offset(cSize * model.rooms[i + 1].corridorPosition[0],
              cSize * model.rooms[i + 1].corridorPosition[1]),
          paintt,
        );
      }
    }
    isRoomXFound = false;
    isRoomYFound = false;
    isDrawingStarted = false;
    model.setRouteSafeRoomsCount(safeRoomsCount);
    model.setRouteUnSafeRoomsCount(unSafeRoomsCount);
    model.setShowBottomModal(true);
    safeRoomsCount = 0;
    unSafeRoomsCount = 0;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
