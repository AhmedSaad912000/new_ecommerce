part of '../login.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: CustomSizes.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text(CustomText.email),
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text(CustomText.password),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(CustomText.rememberMe),
                  ],
                ),
                TextButton(
                    onPressed: ()=> Get.to(const ForgetPasswordScreen()) ,
                    child: const Text(CustomText.forgetPassword))
              ],
            ),
            const SizedBox(
              height: CustomSizes.defaultSpace,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(const NavigationMenu()),
                    child: const Text(CustomText.signIn))),
            const SizedBox(
              height: CustomSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () =>Get.to(const SignUpScreen()),
                    child: const Text(CustomText.createAccount))),
          ],
        ),
      ),
    );
  }
}
