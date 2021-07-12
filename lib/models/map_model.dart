import 'package:safemove/models/grid_model.dart';
import 'package:safemove/models/room_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pos {
  double x = 0.0;
  double y = 0.0;

  Pos(x, y) {
    this.x = x;
    this.y = y;
  }
}

class MapModel extends ChangeNotifier {
  double _scale = 1.0;
  double _previousScale = 1.0;
  Pos _pos = Pos(0.0, 0.0);
  Pos _previousPos = Pos(0.0, 0.0);
  Pos _endPos = Pos(0.0, 0.0);
  bool _isScaled = false;
  RouteData _routeData;
  bool _showBottomModal = false;
  int _routeSafeRoomsCount = 0;
  int _routeUnSafeRoomsCount = 0;
  List _locationData = [0.0, 0.0];
  GridModel _locationGrid;

  double get scale => _scale;
  double get previousScale => _previousScale;
  Pos get pos => _pos;
  Pos get previousPos => _previousPos;
  Pos get endPos => _endPos;
  bool get isScaled => _isScaled;
  RouteData get routeData => _routeData;
  bool get showBottomModal => _showBottomModal;
  int get routeSafeRoomsCount => _routeSafeRoomsCount;
  int get routeUnSafeRoomsCount => _routeUnSafeRoomsCount;
  List get locationData => _locationData;
  GridModel get locationGrid => _locationGrid;

  bool _hasTouched = false;
  bool get hasTouched => _hasTouched;
  set hasTouched(value) {
    _hasTouched = value;
    notifyListeners();
  }

  List<RoomDataModel> _rooms;
  List<RoomDataModel> get rooms => _rooms;

  void handleDragScaleStart(ScaleStartDetails details) {
    _hasTouched = true;
    _previousScale = _scale;
    _previousPos.x = (details.focalPoint.dx / _scale) - _endPos.x;
    _previousPos.y = (details.focalPoint.dy / _scale) - _endPos.y;
    notifyListeners();
  }

  void handleDragScaleUpdate(ScaleUpdateDetails details) {
    _scale = _previousScale * details.scale;
    if (_scale > 2.0) {
      _isScaled = true;
    } else {
      _isScaled = false;
    }

    if (_scale < 1.0) {
      _scale = 1.0;
    } else if (_scale > 4.0) {
      _scale = 4.0;
    } else if (_previousScale == _scale) {
      _pos.x = (details.focalPoint.dx / _scale) - _previousPos.x;
      _pos.y = (details.focalPoint.dy / _scale) - _previousPos.y;
    }
    notifyListeners();
  }

  void reset() {
    _scale = 1.0;
    _previousScale = 1.0;
    _pos = Pos(0.0, 0.0);
    _previousPos = Pos(0.0, 0.0);
    _endPos = Pos(0.0, 0.0);
    _isScaled = false;
    notifyListeners();
  }

  void handleDragScaleEnd() {
    _previousScale = 1.0;
    _endPos = _pos;
    notifyListeners();
  }

  void setRouteData(RouteData routeData) {
    _routeData = routeData;
    notifyListeners();
  }

  void setLocationData(double locationDataX, double locationDataY) {
    _locationData = [locationDataX, locationDataY];
    notifyListeners();
  }

  void setRoomsData(roomsData) {
    _rooms = roomsData;
    notifyListeners();
  }

  void setRouteSafeRoomsCount(int count) {
    _routeSafeRoomsCount = count;
  }

  void setRouteUnSafeRoomsCount(int count) {
    _routeUnSafeRoomsCount = count;
  }

  void resetRouteData() {
    _showBottomModal = false;
    _routeSafeRoomsCount = 0;
    _routeUnSafeRoomsCount = 0;
    _routeData = null;
    notifyListeners();
  }

  void setShowBottomModal(bool status) {
    _showBottomModal = status;
  }

  void setLocationGrid(GridModel locationGrid) {
    _locationGrid = locationGrid;
    _locationData = locationGrid.corridorPosition;
    notifyListeners();
  }
}
