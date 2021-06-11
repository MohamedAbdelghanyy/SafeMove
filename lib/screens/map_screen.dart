import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/screens/main_drawer.dart';
import 'package:SafeMove/widgets/map/map_widget.dart';
import 'package:SafeMove/widgets/map/raw_gesture_detector_widget.dart';
import 'package:SafeMove/widgets/map/route_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatelessWidget {
  static const routeName = '/map-screen';

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FloorPlanModel>(context);
    return Scaffold(
      backgroundColor: Global.primaryColor,
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'MIU Map',
        ),
      ),
      drawer: MainDrawer(),
      floatingActionButton:
          model.isScaled || model.pos.x != 0 || model.pos.y != 0
              ? FloatingActionButton(
                  onPressed: () {
                    model.reset();
                  },
                  child: Icon(
                    Icons.fullscreen_exit_rounded,
                    size: 35,
                  ),
                  backgroundColor: Global.secondaryColor,
                )
              : SizedBox(),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          color: Global.secondaryColor,
          child: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: <Widget>[
                    RouteSelectionWidget(),
                    RawGestureDetectorWidget(
                      child: MapWidget(),
                    ),
                  ],
                ),
                model.routeData != null
                    ? Container(
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
