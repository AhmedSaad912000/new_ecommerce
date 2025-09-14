import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../util/constants/colors.dart';
import '../../../util/constants/image_strings.dart';
class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
            image: AssetImage(CustomImages.user),
            fit: BoxFit.cover,
          ),
        ),

      ),
      title: Text("Code with I",style: Theme.of(context).textTheme.headlineSmall!.apply(color: ColorsManger.white),),
      subtitle: Text("support@coding.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: ColorsManger.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit,color: Colors.white,)),

    );
  }
}
