import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../util/device/device_utility.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark=HelperFunctions.isDarkMode(context);
    return Material(
      color: dark?ColorsManger.black:ColorsManger.white,
      child: TabBar(
        isScrollable: true,
        indicatorColor: ColorsManger.primaryColor,
          labelColor: dark?ColorsManger.white:ColorsManger.primaryColor,
        unselectedLabelColor: ColorsManger.darkGray,
        tabs: tabs,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
