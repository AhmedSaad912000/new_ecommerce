import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../styles/shadows.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../icons/circular_icon.dart';
import '../texts/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(CustomSizes.productImageRadius),
            color: dark ? ColorsManger.darkGray : ColorsManger.white),
        child: Column(
          children: [
            RoundedContainer(
              height: 100,
              padding: EdgeInsets.all(CustomSizes.sm),
              backgroundColor: dark ? ColorsManger.dark : ColorsManger.light,
              child: Stack(
                children: [
                  RoundedImage(
                    width: 158,
                    imageUrl: CustomImages.productImage1,
                    applyImageRadius: true,
                  ),
                  RoundedContainer(
                    radius: CustomSizes.sm,
                    backgroundColor:
                    ColorsManger.secondary.withValues(alpha: 0.1),
                    padding: EdgeInsets.symmetric(
                        horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
                    child: Text(
                      "29%",
                      style: Theme
                          .of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: ColorsManger.black),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwItems / 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: CustomSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: "Green Nike Air shoes",
                    smallSize: true,
                  ),
                  SizedBox(
                    height: CustomSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme
                            .of(context)
                            .textTheme
                            .labelMedium,
                      ),
                      SizedBox(
                        width: CustomSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: ColorsManger.primaryColor,
                        size: CustomSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductPriceText(price: "35.5"),
                      Container(
                        decoration: BoxDecoration(
                            color: ColorsManger.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  CustomSizes.cardRadiusMd),
                              bottomRight:
                              Radius.circular(CustomSizes.productImageRadius),
                            )),
                        child: SizedBox(
                            width: CustomSizes.iconLg * 1.2,
                            height: CustomSizes.iconLg * 1.2,
                            child: Icon(Iconsax.add, color: ColorsManger
                                .white,)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.currencySign = "\$",
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;


  @override
  Widget build(BuildContext context) {
    return Text(
        currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
        );
    }
}
