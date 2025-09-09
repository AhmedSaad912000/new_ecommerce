import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';



class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = CustomSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : HelperFunctions.isDarkMode(context)
            ? ColorsManger.black.withValues(alpha: 0.9)
            : ColorsManger.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}