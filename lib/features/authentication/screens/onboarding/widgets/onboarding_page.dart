 part of '../onboarding.dart';
 class OnBoardingPage extends StatelessWidget {
   final String image, title, subTitle;

   const OnBoardingPage({
     super.key,
     required this.image,
     required this.title,
     required this.subTitle,
   });

   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(CustomSizes.defaultSpace),
       child: Column(
         children: [
           Image(
               width: HelperFunctions.screenWidth() * 0.8,
               height: HelperFunctions.screenHeight() * 0.6,
               image: AssetImage(image)),
           Text(
             title,
             style: Theme.of(context).textTheme.headlineMedium,
             textAlign: TextAlign.center,
           ),
           const SizedBox(
             height: CustomSizes.spaceBtwItems,
           ),
           Text(
             subTitle,
             style: Theme.of(context).textTheme.bodyMedium,
             textAlign: TextAlign.center,
           ),
         ],
       ),
     );
   }
 }
