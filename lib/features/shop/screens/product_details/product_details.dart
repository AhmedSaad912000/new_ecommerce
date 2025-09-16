import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/images/circular_image.dart';
import 'package:ecommerce/common/widgets/images/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/enums.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../util/constants/sizes.dart';
part 'widgets/product_details_image_slider.dart';
part 'widgets/rating_and_share.dart';
part 'widgets/product_meta_data.dart';
part 'widgets/product_attributes.dart';
part 'widgets/bottom_add_to_cart.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
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
                  ProductAttributes(),
                  SizedBox(height: CustomSizes.spaceBtwSection,),
                  SizedBox(
                    width: double.infinity,
                      child: ElevatedButton(onPressed: (){}, child: Text("Checkedout"))),
                  SizedBox(height: CustomSizes.spaceBtwSection,),
                  SectionHeading(title: "Description",showActionButton: false,),
                  SizedBox(height: CustomSizes.spaceBtwItems,),
                  ReadMoreText("This is Product description  for blue Nike sleeve less vest . There are more things  that can be added ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),


                  ),
                  Divider(),
                  SizedBox(height: CustomSizes.spaceBtwItems,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(title: "Reveiws(199)",showActionButton: false,),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                  SizedBox(height: CustomSizes.spaceBtwSection,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



