import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText(
      {super.key,
      required this.title,
      this.smallSize = false,
      this.maxLines = 2,
      this.textAlign = TextAlign.left});

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final dark= HelperFunctions.isDarkMode(context);
    return Text(
      title,
      style: (!smallSize
          ? Theme.of(context).textTheme.titleSmall!
          : Theme.of(context).textTheme.labelLarge)!.apply(color:dark? ColorsManger.white:ColorsManger.dark),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,

    );
  }
}
