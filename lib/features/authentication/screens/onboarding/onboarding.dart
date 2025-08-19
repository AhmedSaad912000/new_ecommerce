import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:ecommerce/util/device/device_utility.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import '../../../../util/constants/colors.dart';
import '../../../../util/constants/image_strings.dart';
import '../../../../util/constants/sizes.dart';
import '../../controllers/onboarding_controller.dart';

part 'widgets/onboarding_page.dart';

part 'widgets/onboarding_skip.dart';

part 'widgets/onboarding_dot_navigation.dart';
part 'widgets/onboarding_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView(
                  controller:controller.pageController,
                  onPageChanged: controller.updatePageIndicator,
                  children: [
                    OnBoardingPage(
                      image: CustomImages.tOnBoardingImage1,
                      title: CustomText.onBoardingTitle1,
                      subTitle: CustomText.onBoardingSubTitle1,
                    ),
                    OnBoardingPage(
                      image: CustomImages.tOnBoardingImage2,
                      title: CustomText.onBoardingTitle2,
                      subTitle: CustomText.onBoardingSubTitle2,
                    ),
                    OnBoardingPage(
                      image: CustomImages.tOnBoardingImage3,
                      title: CustomText.onBoardingTitle3,
                      subTitle: CustomText.onBoardingSubTitle3,
                    ),
                  ],
                ),
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


