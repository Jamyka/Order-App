// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:order/widgets/app_column.dart';
import 'package:order/widgets/app_icon.dart';
import 'package:order/widgets/expandable-text-widget.dart';

class PopularFoodDetail extends StatelessWidget {
  //final String text;
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //backgroundImage
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              //height:dimensions.screenHeight
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/img-R1.jpeg"))),
            ),
          ),
          //icon widget
          Positioned(
            left: 20,
            right: 20,
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
            top: 350 - 15,
            child: Container(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: "Biryani",
                  ),
                  Container(
                    height: 30,
                  ),
                  const Text(
                    "Introduce",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const ExpandableTextWidget(
                      text:
                          "I remember biryani chawal often being ordered by my parents when we would go out for dinners or parcel the food for home. It was one rice dish that was always ordered. My parents would have the rice with some chicken curry and I would have the rice with palak paneer or dal makhani. Strange but a fact. This was always my favorite combination squeezed with some lemon juice on top.")
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 95,
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15 * 2),
              topRight: Radius.circular(15 * 2),
            ),
            color: Color.fromARGB(122, 177, 175, 175)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, bottom: 10, right: 10),
              //height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(children: const [
                Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "0",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                )
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, bottom: 10, right: 10),
              child: const Text(
                "\$10 | Add to cart",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 58, 187, 204)),
            ),
          ],
        ),
      ),
    );
  }
}
//in dimension file put
//static double populalFoodImgSize=screenHeight/2.41