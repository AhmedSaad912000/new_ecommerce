import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/util/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=HelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        onSelected: onSelected,
        label: isColor ? SizedBox() :Text(text) ,
        selected: selected,
        labelStyle: TextStyle(color: selected?Colors.white:null),
        avatar:isColor? CircularContainer(width: 50,height: 50,backgroundColor:HelperFunctions.getColor(text)!,):null,
        shape: isColor?CircleBorder():null,
        labelPadding:isColor?EdgeInsets.all(0):null,
        padding:isColor?EdgeInsets.all(0):null,
        backgroundColor: isColor?HelperFunctions.getColor(text)!:null,

      ),
    );
  }
}
