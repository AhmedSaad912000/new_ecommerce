
import 'package:flutter/material.dart';

import '../../../util/constants/colors.dart' show ColorsManger;
import '../../../util/helpers/helper_function.dart' show HelperFunctions;

class FormDivider extends StatelessWidget {
  final String dividerText;
  const FormDivider({
    super.key, required this.dividerText,
  });



  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? ColorsManger.darkGray : ColorsManger.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: dark ? ColorsManger.darkGray : ColorsManger.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
