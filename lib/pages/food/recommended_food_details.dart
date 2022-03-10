// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'package:order/utils/colors.dart';
import 'package:order/widgets/big_text.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_bag_outlined),
              ]),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              // color: Colors.white,
              child: const Center(
                  child: Text(
                'Chinese Side',
                style: TextStyle(fontSize: 26),
              )),
              width: double.maxFinite,
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                      //custom dimensions
                      // topLeft: Radius.circular(Dimensions.radius20),
                      // topRight: Radius.circular(Dimensions.radius20))
                      )),
            ),
          ),
          pinned: true,
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/image/food0.png",
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              child:
                  //custom widget
                  const ExpandableTextWidget(
                      text:
                          "Kielbasa corned beef pastrami prosciutto, turkey filet mignon tri-tip beef ribs jowl. Tail leberkas beef ribs shank ham hock. Sirloin kevin meatloaf boudin chuck short ribs. Jowl tongue cupim fatback, doner kevin ham hock tri-tip. Ground round venison chuck drumstick tenderloin, shank ribeye pig pancetta landjaeger beef ribs bacon. Ground round jerky pork belly strip steak shoulder beef swine buffalo flank pork chop prosciutto ham hock beef ribs ribeye. Pig shoulder pork loin biltong chislic, short ribs pork chop.Kielbasa corned beef pastrami prosciutto, turkey filet mignon tri-tip beef ribs jowl. Tail leberkas beef ribs shank ham hock. Sirloin kevin meatloaf boudin chuck short ribs. Jowl tongue cupim fatback, doner kevin ham hock tri-tip. Ground round venison chuck drumstick tenderloin, shank ribeye pig pancetta landjaeger beef ribs bacon. Ground round jerky pork belly strip steak shoulder beef swine buffalo flank pork chop prosciutto ham hock beef ribs ribeye. Pig shoulder pork loin biltong chislic, short ribs pork chop."),
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
            )
          ],
        ))
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              children: [
                //custom icon
                const AppIcon(
                    // iconSize:Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),

                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  // size: Dimensions.font26,
                ),

                BigText(text: "Hello World"),

                const AppIcon(
                    // iconSize:Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          )
        ],
      ),
    );
  }
}
