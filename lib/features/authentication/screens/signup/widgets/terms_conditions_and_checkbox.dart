part of '../signup.dart';
class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,

  });
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        SizedBox(
          width: CustomSizes.spaceBtwItems,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: "${CustomText.iAgreeTo} ",
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: "${CustomText.privacyPolicy} ",
                style:
                Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark
                      ? Colors.white
                      : ColorsManger.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? Colors.white
                      : ColorsManger.primaryColor,
                )),
            TextSpan(
                text: CustomText.and,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: CustomText.termsOfUse,
                style:
                Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark
                      ? Colors.white
                      : ColorsManger.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? Colors.white
                      : ColorsManger.primaryColor,
                )),
          ])),
        ),
      ],
    );
  }
}
