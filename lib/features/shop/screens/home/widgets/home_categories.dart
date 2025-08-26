part of '../home.dart';
class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            VerticalImageText(image: CustomImages.sportIcon,
              title: " Shoes",
              onTap: () {},),
        itemCount: 6,
      ),);
  }
}
