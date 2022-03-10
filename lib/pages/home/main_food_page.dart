import 'package:flutter/material.dart';
import 'package:order/utils/colors.dart';
import 'package:order/utils/dimensions.dart';
import 'package:order/widgets/big_text.dart';
import 'package:order/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // to know dimension of the current screen
    return Scaffold(
      body: Column(children: [
        // Showing The Header
        Container(
          // Use EdgeInsets class for spaces
          margin: EdgeInsets.only(
              top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.only(
              right: Dimensions.width20, left: Dimensions.width20),
          // Rows' default be verticaly centered
          child: Row(
              // "mainAxisAlignment" Create a space between row's children as much
              // as it can on at the most left and one at the most right
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  BigText(
                    text: "Bangladesh",
                    color: AppColors.mainColor,
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: "Narsinqdi",
                        color: Colors.black45,
                      ),
                      const Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ]),
                Center(
                  child: Container(
                    width: Dimensions.width45,
                    height: Dimensions.height45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.iconSize24,
                    ),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.raduis15),
                        color: AppColors.mainColor),
                  ),
                ),
              ]),
        ),
        // Showing The Body
        const Expanded(
          child: SingleChildScrollView(
            child: FoodPageBody(),
          ),
        ),
      ]),
    );
  }
}
