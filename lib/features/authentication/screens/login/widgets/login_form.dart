part of '../login.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: CustomSizes.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(CustomText.email),
              ),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text(CustomText.password),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: CustomSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(CustomText.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: ()=> Get.to(ForgetPasswordScreen()) ,
                    child: Text(CustomText.forgetPassword))
              ],
            ),
            SizedBox(
              height: CustomSizes.defaultSpace,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(CustomText.signIn))),
            SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () =>Get.to(SignUpScreen()),
                    child: Text(CustomText.createAccount))),
          ],
        ),
      ),
    );
  }
}
