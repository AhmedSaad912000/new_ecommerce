import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../util/constants/colors.dart';
import '../../../../util/constants/sizes.dart';
import '../../../../util/device/device_utility.dart';
import '../../../../util/helpers/helper_function.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding= const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace) ,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:padding,
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(CustomSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? ColorsManger.dark
                      : ColorsManger.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(CustomSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: ColorsManger.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: ColorsManger.darkGray,
              ),
              const SizedBox(
                width: CustomSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall?.apply(
                  color: dark ? ColorsManger.white : ColorsManger.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
