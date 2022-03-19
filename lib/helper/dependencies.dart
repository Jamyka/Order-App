import 'package:get/get.dart';
import 'package:order/controllers/popular_product_controller.dart';
import 'package:order/data/api/api_client.dart';
import 'package:order/data/repository/popular_product_repo.dart';
import 'package:order/utils/app_constants.dart';

Future<void> init() async {
  //First we load the API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //Second we load Our Repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //Third we load our Data Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
