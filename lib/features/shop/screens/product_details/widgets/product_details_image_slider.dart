part of '../product_details.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key,});
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return CurvedEdgeWidget(
      child: Container(
        color: dark ? ColorsManger.darkGray : ColorsManger.light,
        child: Stack(
          children: [
            SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(
                      CustomSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image:
                          AssetImage(CustomImages.productImage5))),
                )),
            Positioned(
              right: 6,
              bottom: 30,
              left: 7,
              child: SizedBox(
                height: 75,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => RoundedImage(
                      width: 75,
                      backgroundColor:
                      dark ? ColorsManger.dark : ColorsManger.white,
                      border:
                      Border.all(color: ColorsManger.primaryColor),
                      padding: EdgeInsets.all(CustomSizes.sm),
                      imageUrl: CustomImages.productImage64,
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: CustomSizes.spaceBtwItems,),
                    itemCount: 4
                ),
              ),
            ),
            CustomAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
