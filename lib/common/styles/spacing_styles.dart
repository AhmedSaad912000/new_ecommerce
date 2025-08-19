import 'package:flutter/cupertino.dart';

import '../../util/constants/sizes.dart' show CustomSizes;

class SpacingStyles{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CustomSizes.appBarHeight,
    left: CustomSizes.defaultSpace,
    bottom: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
  );
}