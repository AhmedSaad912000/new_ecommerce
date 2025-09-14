part of '../onboarding.dart';
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=HelperFunctions.isDarkMode(context);
    return Positioned(bottom: DeviceUtils.getBottomNavigationBarHeight(),
        right:  CustomSizes.defaultSpace,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),backgroundColor:dark?ColorsManger.primaryColor: Colors.black
          ),
          onPressed: ()=>OnBoardingController.instance.nextPage(),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
