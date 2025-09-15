part of '../product_details.dart';
class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star5,color: Colors.amber,size: 24,),
            SizedBox(width: CustomSizes.spaceBtwItems/2,),
            Text.rich(TextSpan(
                children: [
                  TextSpan(text: "5.0",style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: "(199)"),
                ]
            ))
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.share,size: CustomSizes.iconMd,))
      ],
    );
  }
}