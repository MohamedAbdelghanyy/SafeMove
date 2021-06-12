import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/map_model.dart';
import 'package:SafeMove/widgets/map/route_painter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<MapModel>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Global.primaryColor,
      ),
      padding: EdgeInsets.only(bottom: 25),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/maps/miu.png',
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: List.generate(
              model.rooms.length,
              (idx) {
                if (model.rooms[idx].name != "Turn") {
                  return Transform.translate(
                    offset: Offset(
                      size.width * model.rooms[idx].position[0],
                      size.width * model.rooms[idx].position[1],
                    ),
                    child: model.rooms[idx].isVertical
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: model.rooms[idx].isSafe
                                    ? Colors.green
                                    : Colors.red,
                                radius: 3.0,
                                child: Center(
                                  child: Icon(
                                    model.rooms[idx].icon,
                                    color: Colors.white,
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
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: model.rooms[idx].isSafe
                                    ? Colors.green
                                    : Colors.red,
                                radius: 3.0,
                                child: Center(
                                  child: Icon(
                                    model.rooms[idx].icon,
                                    color: Colors.white,
                                    size: 4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1,
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
                } else {
                  return SizedBox();
                }
              },
            ),
          ),
          model.routeData != null
              ? Container(
                  child: CustomPaint(
                    painter: RoutePainter(model, size.width),
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
                    'assets/images/maps/pointer.png',
                    width: 8,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
