import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';

import '../../../util/constants/sizes.dart';
import '../../../util/constants/text_strings.dart';
import '../../../util/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  final String image, title, subTitle;
  final VoidCallback onPressed;

  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              Text(
               title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => onPressed,
                  child: const Text(CustomText.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
