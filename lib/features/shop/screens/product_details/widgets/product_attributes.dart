part of '../product_details.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: EdgeInsets.all(CustomSizes.md),
          backgroundColor: dark ? ColorsManger.darkGray : ColorsManger.grey,
          child: Column(
            children: [
              Row(
                children: [
                  SectionHeading(
                    title: "Varation",
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: CustomSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ProductTitleText(
                            title: "Price",
                            smallSize: true,
                          ),
                          SizedBox(
                            width: CustomSizes.spaceBtwItems / 1.4,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: CustomSizes.spaceBtwItems,
                          ),
                          ProductPriceText(
                            price: "20",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ProductTitleText(
                            title: "Stock",
                            smallSize: true,
                          ),
                          SizedBox(
                            width: CustomSizes.spaceBtwItems,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ProductTitleText(
                title:
                    "This is Description of Product and it can go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: "Colors", showActionButton: false,),
            SizedBox(height: CustomSizes.spaceBtwItems / 2,),
           Wrap(
             spacing: 8,
             children: [
               CustomChoiceChip(text: 'Green', selected: true,onSelected: (value){} ,),
               CustomChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
               CustomChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),
             ],
           ),

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: "Sizes", showActionButton: false,),
            SizedBox(height: CustomSizes.spaceBtwItems / 2,),
           Wrap(
             spacing: 8,
             children: [
               CustomChoiceChip(text: 'EU 24', selected: true,onSelected: (value){}),
               CustomChoiceChip(text: 'EU 46', selected: false,onSelected: (value){}),
               CustomChoiceChip(text: 'EU 50', selected: false,onSelected: (value){}),
             ],
           ),

          ],
        ),
      ],
    );
  }
}
