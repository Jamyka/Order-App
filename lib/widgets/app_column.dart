// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:order/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // We use wrap widget to draw samething again and again
            Wrap(
              // List.generate => genrate a number of this icon dynamiclly ex.5
              children: List.generate(
                  5,
                  (index) => const Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                      )),
            ),
            // SizedBox(width: 10,),
            SmallText(
              text: "4.5",
              color: AppColors.paraColor,
            ),
            // SizedBox(width: 10,),
            SmallText(
              text: "1287 Comments",
              color: AppColors.paraColor,
            ),
            // SizedBox(width: 5,),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
