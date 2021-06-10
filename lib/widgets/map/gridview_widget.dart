import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/widgets/map/route_painter.dart';
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
                  painter: RoutePainter(model.routeData, size.width),
                ),
              )
            : SizedBox(),
        (model.locationData[0] != 0.0 && model.locationData[1] != 0.0)
            ? Transform.translate(
                offset: Offset(
                  size.width * model.locationData[0],
                  size.width * model.locationData[1],
                ),
                child: Image.asset(
                  'assets/pointer.jpg',
                  width: 8,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
