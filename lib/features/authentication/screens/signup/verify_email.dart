import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../util/constants/text_strings.dart';
import '../../../../util/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(CustomImages.deliveredEmailIllustration),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              Text(
                CustomText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                "support@codingwitnt.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                CustomText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>Get.to(SuccessScreen(
                    image: CustomImages.staticSuccessIllustration,
                    title: CustomText.yourAccountCreatedTitle,
                    subTitle: CustomText.yourAccountCreatedSubTitle,
                    onPressed:()=> Get.to(const LoginScreen()),
                  )),
                  child: const Text(CustomText.tContinue),
                ),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(CustomText.resendEmail),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
