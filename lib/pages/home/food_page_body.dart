// import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:order/controllers/popular_product_controller.dart';
import 'package:order/models/products_model.dart';
import 'package:order/utils/app_constants.dart';
import 'package:order/utils/colors.dart';
import 'package:order/utils/dimensions.dart';
import 'package:order/widgets/app_column.dart';
import 'package:order/widgets/big_text.dart';
import 'package:order/widgets/icon_and_text_widget.dart';
import 'package:order/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  // Page Controller lets you manipulate which page is visible in a PageView.
  // ViewPortFraction is the property to determin that a page how much it will
  // fill from the viewport
  // Also we use page controller when we need to zoom,Scroll in and out
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();

    // inside the page controller there is a property "Page" which is the current page in the view
    // So to know which is page is the current we need to listen on the page controller
    pageController.addListener(() {
      // setState()Notify the framework that the internal state of this object has changed.
      // to allow the state system to know that currPageValue is new value
      setState(() {
        _currPageValue = pageController.page!;
        // print("Curr Value is "+_currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider Section
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return popularProducts.isLoaded
              ? Container(
                  height: Dimensions.pageView,
                  // "PageView.builder" a contructor to be able to swipe
                  child: PageView.builder(
                      controller: pageController,
                      itemCount: popularProducts.popularProductList.isEmpty
                          ? 1
                          : popularProducts.popularProductList.length,
                      itemBuilder: (context, position) {
                        return _buildPageItem(position,
                            popularProducts.popularProductList[position]);
                      }),
                )
              : const CircularProgressIndicator(
                  color: AppColors.mainColor,
                );
        }),
        // Dots
        GetBuilder<PopularProductController>(builder: (popularProducts) {
          return DotsIndicator(
            dotsCount: popularProducts.popularProductList.isEmpty
                ? 1
                : popularProducts.popularProductList.length,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),
        // Popular Text
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(text: "Recommended", size: 20),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food Pairing"),
              )
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        // List of food and images
        // Listview expects size from it's parent container
        ListView.builder(
            // prevent the list view from being scrolling
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            // Every builder takes a function
            // The index is number of items you want in this list view
            // context here it could be different from Build context
            // index start from zero and it's connect to the itemCount
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  bottom: Dimensions.height10,
                ),
                child: Row(
                  children: [
                    // Image
                    Container(
                      width: Dimensions.listViewImgSize,
                      height: Dimensions.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.raduis20),
                          color: Colors.white,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/food0.png"),
                          )),
                    ),

                    // Text
                    // to make container take all the avialble space
                    // we use expandded
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.raduis20),
                            bottomRight: Radius.circular(Dimensions.raduis20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Nutritious fruit meal in china"),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SmallText(text: "with chinese characteristics"),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        iconColor: AppColors.iconColor1),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        iconColor: AppColors.mainColor),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32mins",
                                        iconColor: AppColors.iconColor2),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index, ProductModel popularProduct) {
    // Stack A widget that positions its children relative to the edges of its box.
    // we use it when we want to overlay some widgets
    // Scalling in flutter needs api "Matrix"
    Matrix4 matrix = Matrix4.identity(); // instance has 3 coordinates x y z
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor); //1
      var currTrans = _height * (1 - currScale) / 2;
      // first we are getting the current scalling and based on that
      // than we change the position
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale = _scaleFactor +
          (_currPageValue - index + 1) * (1 - _scaleFactor); //0.8
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor); //0.8
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    // Transform widgets, that let you move, rotate, resize and flip
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            // if you put one container inside another container
            // the child container takes parents' container height
            // So the solution is to seprat parent and child with another widget "Stack Container"
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.raduis30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage(AppConstants.BASE_URL + popularProduct.img!),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // if you put one container inside another container
              // the child container takes parents' container height
              // So the solution is to seprat parent and child with another widget "Stack Container"
              height: Dimensions.pageViewTextContainer + 15,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.raduis20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height15, left: 15, right: 15),
                  child: AppColumn(text: popularProduct.name!)),
            ),
          )
        ],
      ),
    );
  }
}
