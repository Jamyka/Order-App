import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  const AppIcon(
      {Key? key,
      required this.icon,
      this.backgroundColor = const Color(0xFFCFF4E4),
      this.iconColor = const Color(0xFF756D54),
      this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 16,
      ),
    );
  }
}
