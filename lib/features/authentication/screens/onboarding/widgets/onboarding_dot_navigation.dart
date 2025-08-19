part of '../onboarding.dart';

class OnBoardingDotNavigation extends StatelessWidget {
 const  OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=HelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
        left: CustomSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor:dark? ColorsManger.light:ColorsManger.dark,
            dotHeight: 6,
          ),
        ));
  }
}
