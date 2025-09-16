part of '../product_details.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: CustomSizes.defaultSpace / 2,
          vertical: CustomSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? ColorsManger.darkGray : ColorsManger.light,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(CustomSizes.cardRadiusLg),
            topLeft: Radius.circular(CustomSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: ColorsManger.darkGray,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              SizedBox(
                width: CustomSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                width: CustomSizes.spaceBtwItems,
              ),
              CircularIcon(
                icon: Iconsax.add,
                backgroundColor: ColorsManger.black,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(CustomSizes.md),
              backgroundColor: Colors.black,
              side: BorderSide(color: Colors.black),
            ),
            child: Text("Add To Cart"),
          )
        ],
      ),
    );
  }
}
