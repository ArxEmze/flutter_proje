
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  Future<bool> isfirstlaunch() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    final runned = storage.getBool("runned");

    var counter = storage.getInt("launchCount");

    if (runned == null) {
      counter = 1;
      await storage.setInt("launchCount", 1);
      return true;
    } else {
      await storage.setInt("launchCount", counter! + 1);
      return false;
    }
  }

  firstLaunch() async {

     final SharedPreferences storage = await SharedPreferences.getInstance();
    storage.setBool("runned", false);
  }

  clearStorage() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.clear();
  }

}
