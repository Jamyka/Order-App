import 'package:flutter/cupertino.dart';
import 'package:order/utils/dimensions.dart';
import 'package:order/widgets/small_text.dart';

// // // Reusable Row widget // // //

class IconAndTextWidget extends StatelessWidget {
  // You can't pass icon as icon it only can be passed as icon data 
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({ Key? key, required this.icon,required this.text,required this.iconColor }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,size: Dimensions.iconSize24,),
        SizedBox(width: 5,),
        SmallText(text: text,),
      ],
    );
  }
}