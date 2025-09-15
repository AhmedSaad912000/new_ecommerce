import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../util/constants/sizes.dart';
part 'widgets/product_details_image_slider.dart';
part 'widgets/rating_and_share.dart';
part 'widgets/product_meta_data.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
                padding: EdgeInsets.only(right: CustomSizes.defaultSpace,left:CustomSizes.defaultSpace,bottom:CustomSizes.defaultSpace),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaData(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



