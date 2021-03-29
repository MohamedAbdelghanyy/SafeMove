import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  String id = "";
  var name = "Guest";
  var phone = "";
  var email = "";
  var password = "";
  var pref;
  String type = '';

  PrefManager() {
    //loadDataFromLocalMemory();
  }

  Future<bool> setLoggedInData(String id, String name, String phone,
      String email, String password, String type) async {
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
    this.id = id;
    this.name = name;
    this.phone = phone;
    this.email = email;
    this.password = password;
    this.type = type;
    pref.setString("id", id);
    pref.setString("name", name);
    pref.setString("phone", phone);
    pref.setString("email", email);
    pref.setString("password", password);
    pref.setString("type", type);
    print("Saved! - {$id} - {$name} - {$email}");
    return true;
  }

  Future<void> loadDataFromLocalMemory() async {
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
    id = pref.getString("id") ?? id;
    name = pref.getString("name") ?? name;
    phone = pref.getString("phone") ?? phone;
    email = pref.getString("email") ?? email;
    password = pref.getString("password") ?? password;
    type = pref.getString("type") ?? type;
    print("Loaded - {$id} - {$name} - {$email}");
  }

  Future<void> saveDataToLocalMemory() async {
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
    pref.setString("id", id);
    pref.setString("name", name);
    pref.setString("phone", phone);
    pref.setString("email", email);
    pref.setString("password", password);
    pref.setString("type", type);
    print("Saved! - {$id} - {$name} - {$email} ");
  }

  bool setId(String id) {
    this.id = id;
    return true;
  }

  bool setName(String name) {
    this.name = name;
    return true;
  }

  bool setPhone(String phone) {
    this.phone = phone;
    return true;
  }

  bool setEmail(String email) {
    this.email = email;
    return true;
  }

  bool setPassword(String password) {
    this.password = password;
    return true;
  }

  bool setType(String type) {
    this.type = type;
    return true;
  }

  String getId() {
    return id;
  }

  String getName() {
    return name;
  }

  String getPhone() {
    return phone;
  }

  String getEmail() {
    return email;
  }

  String getType() {
    return type;
  }

  bool isLoggedIn() {
    if (id.toString() != "") {
      return true;
    } else {
      return false;
    }
  }

  Future<void> logOut() async {
    this.id = "";
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
    pref.setString("id", "");
    pref.setString("name", "Guest");
    pref.setString("phone", "");
    pref.setString("email", "");
    pref.setString("password", "");
    pref.setString("address", "");
  }
}
