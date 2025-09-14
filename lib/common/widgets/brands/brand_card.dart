import 'package:flutter/material.dart';
import '../../../util/constants/colors.dart';
import '../../../util/constants/enums.dart';
import '../../../util/constants/image_strings.dart';
import '../../../util/constants/sizes.dart';
import '../../../util/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';
class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key, this.onTap, required this.showBorder,
  });
  final void Function()? onTap;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(CustomSizes.sm),
        showBorder: showBorder,
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
            const SizedBox(
              height: CustomSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
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
  }
}
