// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:order/utils/colors.dart';
import 'package:order/utils/dimensions.dart';
import 'package:order/widgets/app_column.dart';
import 'package:order/widgets/app_icon.dart';
import 'package:order/widgets/big_text.dart';
import 'package:order/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  //final String text;
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //backgroundImage
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              //height:dimensions.screenHeight
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food0.png"))),
            ),
          ),
          //icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined),
              ],
            ),
          ),
          //intoduce
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.raduis20),
                      topLeft: Radius.circular(Dimensions.raduis20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "China Side",
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. The preferences for seasoning and cooking techniques of Chinese provinces depend on differences in historical background and ethnic groups. Geographic features including mountains, rivers, forests, and deserts also have a strong effect on the local available"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.raduis20 * 2),
              topRight: Radius.circular(Dimensions.raduis20 * 2),
            ),
            color: AppColors.buttonBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  left: Dimensions.width20,
                  bottom: Dimensions.height20,
                  right: Dimensions.width20),
              //height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.raduis20),
                  color: Colors.white),
              child: Row(children: [
                const Icon(
                  Icons.remove,
                  color: AppColors.signColor,
                ),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                BigText(
                  text: "0",
                ),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                const Icon(
                  Icons.add,
                  color: AppColors.signColor,
                )
              ]),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.raduis20),
                  color: AppColors.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
//in dimension file put
//static double populalFoodImgSize=screenHeight/2.41