import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/product_card/product_card_vertical.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_texts/vertical_image_text.dart';
import '../../../../common/widgets/images/rounded_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../controllers/home_controller.dart';

part 'widgets/home_appbar.dart';

part 'widgets/home_categories.dart';

part 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: CustomSizes.spaceBtwSection,
                  ),
                  SearchContainer(
                    text: "Search on Store",
                  ),
                  SizedBox(
                    height: CustomSizes.spaceBtwSection,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: CustomSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                        ),
                        SizedBox(
                          height: CustomSizes.spaceBtwItems,
                        ),
                        HomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      CustomImages.banner4,
                      CustomImages.promoBanner3,
                      CustomImages.promoBanner1,
                      CustomImages.promoBanner2,
                      CustomImages.banner3,
                      CustomImages.banner2,
                    ],
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwSection,),
                  SectionHeading(title: 'Popular Products',onPressed: (){},),
                  const SizedBox(height: CustomSizes.spaceBtwItems,),
                  GridLayout(itemCount: 10,itemBuilder: (context, index) => const ProductCardVertical() ,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

