// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      // "PageView.builder" a contructor to be able to swipe
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/image/imgS1.jpg"),
        ),
      ),
    );
  }
}
