import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/screens/main_drawer.dart';
import 'package:SafeMove/widgets/map/gridview_widget.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MIU Safe Move Map',
        ),
      ),
      drawer: MainDrawer(),
      floatingActionButton: model.isScaled
          ? FloatingActionButton(
              onPressed: () {
                model.reset();
              },
              child: const Icon(Icons.zoom_out_outlined),
              backgroundColor: Colors.blue,
            )
          : SizedBox(),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          color: Global.blue,
          child: Center(
            child: Column(
              children: <Widget>[
                RouteSelectionWidget(),
                RawGestureDetectorWidget(
                  child: GridViewWidget(),
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
