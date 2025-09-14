import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/product/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/product_card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../common/widgets/brands/brand_card.dart';
part 'widgets/categories_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                        GridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (context, index) {
                            return BrandCard(
                              showBorder: true,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: CustomTabBar(tabs: [
                    Tab(
                      child: Text("Sports"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronics"),
                    ),
                    Tab(
                      child: Text("Clothes"),
                    ),
                    Tab(
                      child: Text("Cosmetics"),
                    ),
                  ]),
                )
              ];
            },
            body: TabBarView(
                children: [
                  CategoriesTab(),
                  CategoriesTab(),
                  CategoriesTab(),
                  CategoriesTab(),
                  CategoriesTab(),

            ])),
      ),
    );
  }
}

