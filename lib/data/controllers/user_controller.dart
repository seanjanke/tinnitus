import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinnitus/data/models/severity.dart';
import 'package:tinnitus/data/models/user_info.dart';
import 'package:tinnitus/data/sources/local_db.dart';

class UserController extends GetxController {
  RxBool hasCompletedOnboarding = false.obs;
  Rx<Severity> userSeverity =
      Severity(id: 0, answers: [], level: SeverityLevel.one).obs;
  Rx<AppUser> currentUser = AppUser.empty().obs;

  Future<void> initilize() async {
    await loadShowOnboarding();
    await fetchSeverities();
    await getUser();
  }

  Future<void> getUser() async {
    LocalDBService dbHelper = LocalDBService();
    // AppUser user = await dbHelper.getUser(); // TODO: implement this
    currentUser.value = AppUser(id: 0, name: 'Hacka Ton', age: 24);
  }

  Future<void> saveSeverity(Severity severity) async {
    await saveSeverityToLocalDb(severity);
    userSeverity.value = severity;
  }

  Future<void> loadShowOnboarding() async {
    final prefs = await SharedPreferences.getInstance();

    hasCompletedOnboarding.value =
        prefs.getBool('hasCompletedOnboarding') ?? false;
  }

  Future<void> setShowOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('hasCompletedOnboarding', true);
    hasCompletedOnboarding.value = true;
  }

  Future<void> saveSeverityToLocalDb(Severity severity) async {
    LocalDBService dbHelper = LocalDBService();
    await dbHelper.insertSeverity(severity);
  }

  Future<void> fetchSeverities() async {
    LocalDBService dbHelper = LocalDBService();
    List<Severity> severities = await dbHelper.getSeverities();
    if (severities.isNotEmpty) {
      userSeverity.value = severities.first;
    }
  }
}
