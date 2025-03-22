import 'package:get/get.dart';
import 'package:tinnitus/data/models/recom.dart';

class RecommendationsController extends GetxController {
  RxList<Recommendation> userRecommendations = <Recommendation>[].obs;

  Future<void> initilize() async {
    await loadUserRecommendations();
  }

  Future<void> loadUserRecommendations() async {
    // TODO: load user recommendations from cache

    userRecommendations.value = allRecommendations;
  }
}
