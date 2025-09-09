import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [CartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: HelperFunctions.isDarkMode(context)
                    ? ColorsManger.black
                    : ColorsManger.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(CustomSizes.defaultSpace),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      SizedBox(
                        height: CustomSizes.spaceBtwItems,
                      ),
                      SearchContainer(
                        text: 'Search on Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: CustomSizes.spaceBtwSection,
                      ),
                      SectionHeading(
                        title: "Features Brands",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: CustomSizes.spaceBtwItems / 1.5,
                      ),
                      GridLayout(itemCount: 4,mainAxisExtent: 80, itemBuilder: (context, index) {
                       return GestureDetector(
                          onTap: (){},
                          child: RoundedContainer(
                            padding: EdgeInsets.all(CustomSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: CircularImage(
                                    image: CustomImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: HelperFunctions.isDarkMode(context)
                                        ? ColorsManger.white
                                        : ColorsManger.black,
                                  ),
                                ),
                                SizedBox(
                                  height: CustomSizes.spaceBtwItems / 2,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      BrandTitleWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        "256 products",
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        Theme.of(context).textTheme.labelMedium,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },)

                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
