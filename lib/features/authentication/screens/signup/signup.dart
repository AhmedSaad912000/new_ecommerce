import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
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
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                CustomText.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: CustomSizes.spaceBtwSection,
              ),
              SignUpForm(),
              TermsAndConditionsCheckBox(),
              SizedBox(height: CustomSizes.spaceBtwSection,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    CustomText.createAccount,
                  ),
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwSection,),
              FormDivider(dividerText: CustomText.orSignUpWith.capitalize!,),
              SizedBox(height: CustomSizes.spaceBtwSection,),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

