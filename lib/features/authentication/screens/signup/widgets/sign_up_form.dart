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
                    decoration: InputDecoration(
                      labelText: CustomText.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                SizedBox(
                  width: CustomSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: CustomText.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: CustomText.username,
                prefixIcon: Icon(Iconsax.user_edit),
              ),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: CustomText.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: CustomText.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: CustomText.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            SizedBox(
              height: CustomSizes.spaceBtwSection,
            ),


          ],
        ));
  }
}

