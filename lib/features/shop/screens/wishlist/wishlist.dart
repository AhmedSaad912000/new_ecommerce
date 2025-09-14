import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/product_card/product_card_vertical.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: Text("WishList",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          CircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 10, itemBuilder: (p0, p1) => const ProductCardVertical(),)
            ],
          ),
        ),
      ),
    );
  }
}
