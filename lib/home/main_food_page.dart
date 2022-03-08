import 'package:flutter/material.dart';
import 'package:order/utils/colors.dart';
import 'package:order/widgets/big_text.dart';
import 'package:order/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // Use EdgeInsets class for spaces
            margin: EdgeInsets.only(top: 45,bottom: 15),
            padding: EdgeInsets.only(right: 20,left: 20),
          // Rows' default be verticaly centered
          child: Row(
            // "mainAxisAlignment" Create a space between row's children as much 
            // as it can on at the most left and one at the most right
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(text: "Bangladesh",color: AppColors.mainColor,),
                  Row(
                    children: [
                      SmallText(text: "Narsinqdi", color: Colors.black45,),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ]),
              Center(
                child: Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search,color: Colors.white,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor
                  ),
                ),
              ),
            ]),
        ),
        FoodPageBody(),
      ]),
    );
  }
}