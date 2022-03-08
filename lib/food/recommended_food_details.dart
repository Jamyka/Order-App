import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:order/utils/colors.dart';
import 'package:order/widgets/big_text.dart';

import '../widgets/app_icon.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
       

            // //custom icons for Our app
            AppIcon(icon: Icons.clear),
            AppIcon(icon: Icons.shopping_bag_outlined),
          ]),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Container(
              // color: Colors.white,
              child: Center(
                  child: Text(
                'Chinese Side',
                style: TextStyle(fontSize: 26),
              )),
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 5, bottom: 10),

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                      // //custom dimentions
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
              "assets/image/imgSS1.png",
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
                    // //cusrom widget
                    //  ExpandableTextWidget(Text("Kielbasa corned beef pastrami prosciutto, turkey filet mignon tri-tip beef ribs jowl. Tail leberkas beef ribs shank ham hock. Sirloin kevin meatloaf boudin chuck short ribs. Jowl tongue cupim fatback, doner kevin ham hock tri-tip. Ground round venison chuck drumstick tenderloin, shank ribeye pig pancetta landjaeger beef ribs bacon. Ground round jerky pork belly strip steak shoulder beef swine buffalo flank pork chop prosciutto ham hock beef ribs ribeye. Pig shoulder pork loin biltong chislic, short ribs pork chop.Kielbasa corned beef pastrami prosciutto, turkey filet mignon tri-tip beef ribs jowl. Tail leberkas beef ribs shank ham hock. Sirloin kevin meatloaf boudin chuck short ribs. Jowl tongue cupim fatback, doner kevin ham hock tri-tip. Ground round venison chuck drumstick tenderloin, shank ribeye pig pancetta landjaeger beef ribs bacon. Ground round jerky pork belly strip steak shoulder beef swine buffalo flank pork chop prosciutto ham hock beef ribs ribeye. Pig shoulder pork loin biltong chislic, short ribs pork chop.")),
                    // , margin: EdgeInsets.only(left: Dimensions.Width20,right: Dimensions.Width20)
                    Text("until custom recived"))
          ],
        ))
      ]),
      
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // padding: EdgeInsets.only(
            //   left: Dimensions.width20*2.5,
            //   right: Dimensions.width20*2.5,
            //   top: Dimensions.heigth10,
            //   bottom: Dimensions.heigth10

            // ),
            child: Row(
              children: [


                // //custom icon
                // AppIcon(iconSize:Dimensions.iconSize24,
                // iconColor:Colors.white,
                //backgroundcolor:Appcolors.main,
                // icon:Icons.remove),

                // BigText(text: "\$12.88 "+" X "+" 0 ", AppColors.mainBlackColor,size: Dimensions.font26,),

                // AppIcon(iconSize:Dimensions.iconSize24,
                // iconColor:Colors.white
                // backgroundcolor:Appcolors.main,
                // icon:Icons.add),
              ],
            ),
          )
        ],
      ),
    );
  }
}
