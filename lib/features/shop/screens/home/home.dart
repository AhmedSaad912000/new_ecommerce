import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_texts/vertical_image_text.dart';
import '../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../util/device/device_utility.dart';

part 'widgets/home_appbar.dart';
part 'widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
        PrimaryHeaderContainer(
        child: Column(
        children: [
            HomeAppBar(),
        SizedBox(
          height: CustomSizes.spaceBtwSection,
        ),
        SearchContainer(text: "Search on Store",),
        SizedBox(
          height: CustomSizes.spaceBtwSection,
        ),
        Padding(
          padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(title: "Popular Categories",),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              HomeCategories()
            ],
          ),
        ),
        ],
      ),
    ),],
        ),
      ),
    );
  }
}


