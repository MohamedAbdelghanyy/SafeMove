import 'package:custom_zoomable_floorplan/core/models/models.dart';
import 'package:custom_zoomable_floorplan/core/viewmodels/floorplan_model.dart';
import 'package:custom_zoomable_floorplan/view/shared/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewWidget extends StatefulWidget {
  RouteData routeData;

  GridViewWidget() {
    // Bla.foundX = false;
    // Bla.foundY = false;
    // Bla.startDrawing = false;

    routeData = new RouteData(
        new Room.fromMap(Global.rooms[0]), new Room.fromMap(Global.rooms[13]));
  }

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
          color: Global.blue,
          child: Image.asset(
            'images/miu.png',
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
        widget.routeData != null
            ? Container(
                alignment: Alignment.center,
                child: CustomPaint(
                  painter: LinePainter(widget.routeData, size.width),
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

  LinePainter(this.routeData, this.cSize);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    List xy = [0.06, -0.29];

    print('[' + xy[0].toString() + ', ' + xy[1].toString());

    canvas.drawLine(Offset(cSize * xy[0], cSize * xy[1]),
        Offset(cSize * xy[0], cSize * xy[1]), paint);

    /*
    if (cTile == routeData.roomX.tile) {
      canvas.drawLine(
          Offset(cSize * routeData.roomX.doorPosition[0],
              cSize * routeData.roomX.doorPosition[1]),
          Offset(cSize * routeData.roomX.corridorPosition[0],
              cSize * routeData.roomX.corridorPosition[1]),
          paint);
    }
    if (cTile == routeData.roomY.tile) {
      canvas.drawLine(
          Offset(cSize * routeData.roomY.doorPosition[0],
              cSize * routeData.roomY.doorPosition[1]),
          Offset(cSize * routeData.roomY.corridorPosition[0],
              cSize * routeData.roomY.corridorPosition[1]),
          paint);
    }
    for (int i = 0; i < Global.corridorCheckPoint.length; i++) {
      print('looping..');
      if (cTile == Global.corridorCheckPoint[i]['tile']) {
        if (Bla.foundX && Bla.foundY) {
          print('found both');
          //break;
        }
        if (routeData.roomX.corridorPosition[0] ==
                Global.corridorCheckPoint[i]['position'][0] &&
            routeData.roomX.corridorPosition[1] ==
                Global.corridorCheckPoint[i]['position'][1] &&
            routeData.roomX.tile == cTile) {
          Bla.foundX = true;
          Bla.startDrawing = true;
          print('xfound');
          if (Bla.foundY) {
            //break;
          }
        }
        if (routeData.roomY.corridorPosition[0] ==
                Global.corridorCheckPoint[i]['position'][0] &&
            routeData.roomY.corridorPosition[1] ==
                Global.corridorCheckPoint[i]['position'][1] &&
            routeData.roomY.tile == cTile) {
          Bla.foundY = true;
          Bla.startDrawing = true;
          print('yfound');
          if (Bla.foundX) {
            //break;
          }
        }
        if (!(Bla.foundX && Bla.foundY)) {
          print('st');
          if (Bla.startDrawing &&
              (i + 1 < Global.corridorCheckPoint.length) &&
              cTile == Global.corridorCheckPoint[i + 1]['tile']) {
            print('drawing');
            canvas.drawLine(
              Offset(cSize * Global.corridorCheckPoint[i]['position'][0],
                  cSize * Global.corridorCheckPoint[i]['position'][1]),
              Offset(cSize * Global.corridorCheckPoint[i + 1]['position'][0],
                  cSize * Global.corridorCheckPoint[i + 1]['position'][1]),
              paint,
            );
          }
        }
      }
    }*/
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
