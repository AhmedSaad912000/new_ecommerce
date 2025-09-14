part of '../store.dart';
class CategoriesTab extends StatelessWidget {
  const CategoriesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
     children: [
       Padding(
         padding: EdgeInsets.all(CustomSizes.defaultSpace),
         child: Column(
           children: [
             BrandShowCase(images: [CustomImages.productImage1,CustomImages.productImage5,CustomImages.productImage10],),
             BrandShowCase(images: [CustomImages.productImage1,CustomImages.productImage5,CustomImages.productImage10],),
             SizedBox(height: CustomSizes.spaceBtwItems,),
             SectionHeading(title: "You might like",onPressed: (){},),
             SizedBox(height: CustomSizes.spaceBtwItems,),
             GridLayout(itemCount: 4, itemBuilder: (p0, p1) => ProductCardVertical(),)
           ],
         ),
       ),
     ]
    );
  }
}
