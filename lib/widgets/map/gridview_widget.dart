import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/models/room_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<FloorPlanModel>(context);
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          //color: Global.blue,
          child: Image.asset(
            'assets/miu_3.png',
          ),
        ),
        /*model.isScaled
                  ?*/
        Stack(
          children: List.generate(
            model.rooms.length,
            (idx) {
              return Transform.translate(
                offset: Offset(
                  size.width * model.rooms[idx].position[0],
                  size.width * model.rooms[idx].position[1],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor:
                          model.rooms[idx].status ? Colors.green : Colors.red,
                      radius: 3.0,
                      child: Center(
                        child: Icon(
                          model.rooms[idx].icon,
                          color: Colors.white, //Global.blue,
                          size: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      model.rooms[idx].name,
                      style: TextStyle(
                        fontSize: 3.5,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        model.routeData != null
            ? Container(
                child: CustomPaint(
                  painter: LinePainter(model.routeData, size.width),
                ),
              )
            : SizedBox()
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  RouteData routeData;
  double cSize;
  Paint paintt = Paint()
    ..color = Colors.blue[900]
    ..strokeWidth = 5
    ..strokeCap = StrokeCap.round;
  bool isDrawingStarted = false, isRoomXFound = false, isRoomYFound = false;

  LinePainter(this.routeData, this.cSize);

  @override
  void paint(final Canvas canvas, final Size size) {
    /*List xy = [0.0362, -0.256];
    print('[' + xy[0].toString() + ', ' + xy[1].toString());
    canvas.drawLine(Offset(cSize * xy[0], cSize * xy[1]),
        Offset(cSize * xy[0], cSize * xy[1]), paint);
    */

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
