class RoomDataModel {
  String name;
  int total;
  int distanceViolations;
  int maskViolations;
  bool isSafe;

  RoomDataModel(
      this.name, this.total, this.distanceViolations, this.maskViolations) {
    if (this.total > 30 ||
        this.distanceViolations > 5 ||
        this.maskViolations > 5) {
      this.isSafe = false;
    }
  }
}
