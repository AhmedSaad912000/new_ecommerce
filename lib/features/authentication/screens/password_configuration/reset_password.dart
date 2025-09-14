import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../util/helpers/helper_function.dart';
import '../login/login.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:() => Get.offAll(const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(CustomSizes.defaultSpace),
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
                CustomText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwItems,
              ),
              Text(
                CustomText.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => (){},
                  child: const Text(CustomText.done),
                ),
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => (){},
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
