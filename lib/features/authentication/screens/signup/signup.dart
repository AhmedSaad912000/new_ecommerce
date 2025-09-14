import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:ecommerce/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../util/helpers/helper_function.dart';
part 'widgets/sign_up_form.dart';
part 'widgets/terms_conditions_and_checkbox.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                CustomText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              const SignUpForm(),
              const TermsAndConditionsCheckBox(),
              const SizedBox(height: CustomSizes.spaceBtwSection,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(const VerifyEmailScreen()),
                  child: const Text(
                    CustomText.createAccount,
                  ),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwSection,),
              FormDivider(dividerText: CustomText.orSignUpWith.capitalize!,),
              const SizedBox(height: CustomSizes.spaceBtwSection,),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

