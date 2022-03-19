import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order/controllers/popular_product_controller.dart';
import 'package:order/pages/home/main_food_page.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    // get Material App will get the context when the app get initialized

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // title is the parameter name
      title: 'Order-App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainFoodPage(),
    );
  }
}
