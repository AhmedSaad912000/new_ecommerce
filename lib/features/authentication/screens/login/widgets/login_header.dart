part of '../login.dart';
class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(dark
                ? CustomImages.lightAppLogo
                : CustomImages.darkAppLogo)),
        Text(
          CustomText.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(
          height: CustomSizes.sm,
        ),
        Text(
          CustomText.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
