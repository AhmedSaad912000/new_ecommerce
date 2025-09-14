part of '../store.dart';
class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
     children: [
       Padding(
         padding: const EdgeInsets.all(CustomSizes.defaultSpace),
         child: Column(
           children: [
             const BrandShowCase(images: [CustomImages.productImage1,CustomImages.productImage5,CustomImages.productImage10],),
             const BrandShowCase(images: [CustomImages.productImage1,CustomImages.productImage5,CustomImages.productImage10],),
             const SizedBox(height: CustomSizes.spaceBtwItems,),
             SectionHeading(title: "You might like",onPressed: (){},),
             const SizedBox(height: CustomSizes.spaceBtwItems,),
             GridLayout(itemCount: 4, itemBuilder: (p0, p1) => const ProductCardVertical(),)
           ],
         ),
       ),
     ]
    );
  }
}
