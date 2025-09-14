part of '../signup.dart';
class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key,});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: CustomText.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                const SizedBox(
                  width: CustomSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: CustomText.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: CustomText.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: CustomText.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: CustomText.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: CustomText.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: CustomSizes.spaceBtwSection,
            ),


          ],
        ));
  }
}

