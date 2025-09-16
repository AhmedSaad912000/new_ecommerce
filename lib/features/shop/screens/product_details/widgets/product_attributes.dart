part of '../product_details.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(CustomSizes.md),
          backgroundColor: dark ? ColorsManger.darkGray : ColorsManger.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    title: "Varation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: CustomSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Price",
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: CustomSizes.spaceBtwItems / 1.4,
                          ),
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: CustomSizes.spaceBtwItems,
                          ),
                          const ProductPriceText(
                            price: "20",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: "Stock",
                            smallSize: true,
                          ),
                          const SizedBox(
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
              const ProductTitleText(
                title:
                    "This is Description of Product and it can go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(
          height: CustomSizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: "Colors", showActionButton: false,),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
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
            const SectionHeading(title: "Sizes", showActionButton: false,),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2,),
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
