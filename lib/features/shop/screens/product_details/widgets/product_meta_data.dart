part of '../product_details.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: CustomSizes.sm,
              backgroundColor: ColorsManger.secondary,
              padding: const EdgeInsets.symmetric(
                  horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
              child: Text(
                "29%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: ColorsManger.black),
              ),
            ),
            SizedBox(
              width: CustomSizes.spaceBtwItems,
            ),
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(
              width: CustomSizes.spaceBtwItems,
            ),
            ProductPriceText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),
        SizedBox(height: CustomSizes.spaceBtwItems/1.5,),
        ProductTitleText(title: "Green Nike Sports Shirt",),
        SizedBox(height: CustomSizes.spaceBtwItems/1.5,),
        Row(
          children: [
            ProductTitleText(title: "Status",),
            SizedBox(width: CustomSizes.spaceBtwItems,),
            Text("In Stock",style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),

        SizedBox(height: CustomSizes.spaceBtwItems/1.5,),
        Row(
          children: [
            CircularImage(image: CustomImages.shoeIcon,
            width: 32,
            height: 32,
              overlayColor: dark?ColorsManger.white:ColorsManger.black,
            ),
            SizedBox(width: CustomSizes.spaceBtwItems/2,),
            BrandTitleWithVerifiedIcon(title: "Nike",brandTextSize: TextSizes.medium,),
          ],
        ),
        

      ],
    );
  }
}
