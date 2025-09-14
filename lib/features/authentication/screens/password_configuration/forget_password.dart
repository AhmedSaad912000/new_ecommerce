import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          CustomSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CustomText.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            Text(
              CustomText.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwSection * 2,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: CustomText.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(const ResetPasswordScreen()),
                child: const Text(CustomText.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
