import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinnitus/data/models/recom.dart';
import 'package:tinnitus/data/models/severity.dart';
import 'package:tinnitus/data/sources/local_db.dart';

class RecommendationsController extends GetxController {
  RxList<Recommendation> userRecommendations = <Recommendation>[].obs;
  RxBool hasCompletedOnboarding = false.obs;
  Rx<Severity> userSeverity = Severity(id: 0, answers: []).obs;

  Future<void> initilize() async {
    await loadUserRecommendations();
    await loadShowOnboarding();
  }

  Future<void> loadUserRecommendations() async {
    // TODO: load user recommendations from cache

    userRecommendations.value = allRecommendations;
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
    print('Saved Severity: ${severity.answers}');
  }

  Future<void> fetchSeverities() async {
    LocalDBService dbHelper = LocalDBService();
    List<Severity> severities = await dbHelper.getSeverities();
    severities.forEach((severity) {
      print('Retrieved Severity: ${severity.answers}');
    });
  }
}
