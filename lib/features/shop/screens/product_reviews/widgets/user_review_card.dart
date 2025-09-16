part of '../product_reviews.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(CustomImages.user),
            ),
            SizedBox(
              width: CustomSizes.spaceBtwItems,
            ),
            Text(
              "John Doe",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        Row(
          children: [
            CustomRatingBarIndicator(rating: 4),
            SizedBox(
              width: CustomSizes.spaceBtwItems,
            ),
            Text(
              "01 Nov 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        ReadMoreText(
          "The user interface of the app is quite inttuitive. I was able to navigate and make purchases seamlessly. Great job!",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorsManger.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: ColorsManger.primaryColor),
        ),
        SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        RoundedContainer(
          backgroundColor: dark ? ColorsManger.darkGray : ColorsManger.grey,
          child: Padding(
            padding: EdgeInsets.all(CustomSizes.sm),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",style: Theme.of(context).textTheme.titleMedium,),
                    Text("02 Nov 2023",style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
                SizedBox(
                  height: CustomSizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "The user interface of the app is quite inttuitive. I was able to navigate and make purchases seamlessly. Great job!",
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorsManger.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorsManger.primaryColor),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: CustomSizes.spaceBtwSection,)
      ],
    );
  }
}
