part of '../product_reviews.dart';
class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key, required this.text, required this.value,
  });
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: DeviceUtils.getScreenWidth(context)*0.5,
            child: LinearProgressIndicator(
              value:value,
              minHeight: 10,
              backgroundColor: ColorsManger.grey,
              valueColor: AlwaysStoppedAnimation(ColorsManger.primaryColor),
              borderRadius: BorderRadius.circular(7),

            ),
          ),
        ),
      ],
    );
  }
}