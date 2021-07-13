class GridModel {
  int id;
  bool status;
  List fingerPrintL1;
  List fingerPrintL2;
  List fingerPrintL3;
  List fingerPrintR1;
  List fingerPrintR2;
  List fingerPrintR3;
  List<double> corridorPosition;
  int crowding = 0;

  GridModel.fromMap(Map data) {
    this.id = data['grid_id'] ?? 0;
    this.status = data['status'] ?? true;
    this.fingerPrintL1 = data['fingerprint_L1'] ?? ["", 0];
    this.fingerPrintL2 = data['fingerprint_L2'] ?? ["", 0];
    this.fingerPrintL3 = data['fingerprint_L3'] ?? ["", 0];
    this.fingerPrintR1 = data['fingerprint_R1'] ?? ["", 0];
    this.fingerPrintR2 = data['fingerprint_R2'] ?? ["", 0];
    this.fingerPrintR3 = data['fingerprint_R3'] ?? ["", 0];
    this.corridorPosition = data['corridor_position'] ?? [0.0, 0.0];
  }
}
