
import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    super.key, required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: ColorsManger.darkGray,
      backgroundColor: Colors.transparent,
      margin:
      EdgeInsets.only(bottom: CustomSizes.spaceBtwItems),
      child: Column(
        children: [
          BrandCard(
            showBorder: false,
          ),
          SizedBox(height: CustomSizes.spaceBtwItems,),
          Row(
            children: images
                .map((img) => brandToProductImageWidget(img, context))
                .toList(),
          )
        ],
      ),
    );
  }
  Widget brandToProductImageWidget(String image,context){
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor:
        HelperFunctions.isDarkMode(context)
            ? ColorsManger.darkGray
            : ColorsManger.light,
        margin: EdgeInsets.only(right: CustomSizes.sm),
        padding: EdgeInsets.only(right: CustomSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
