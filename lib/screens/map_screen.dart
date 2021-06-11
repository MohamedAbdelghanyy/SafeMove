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
      floatingActionButton: model.isScaled
          ? FloatingActionButton(
              onPressed: () {
                model.reset();
              },
              child: const Icon(Icons.zoom_out_outlined),
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
            child: Column(
              children: <Widget>[
                RouteSelectionWidget(),
                RawGestureDetectorWidget(
                  child: MapWidget(),
                ),
                //model.hasTouched ? ResetButtonWidget() : OverlayWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
