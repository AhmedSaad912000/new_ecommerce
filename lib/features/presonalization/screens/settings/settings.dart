import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../util/constants/sizes.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
                child: Column(
              children: [
                CustomAppBar(
                  title: Text("Account",style: Theme.of(context).textTheme.headlineMedium!.apply(color: ColorsManger.white),),
                ),
                UserProfileTile(onPressed: ()=> Get.to(const ProfileScreen()),),
                const SizedBox(height: CustomSizes.spaceBtwSection,)
              ],
            ),
            ),
            Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child:Column(
              children: [
                const SectionHeading(title: "Account sections",showActionButton: false,),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                SettingsMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.notification, title: " Notifications", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Get shopping delivery address", onTap: (){},),
                const SizedBox(height: CustomSizes.spaceBtwSection,),
                const SectionHeading(title: "App Settings",showActionButton: false,),
                const SizedBox(height: CustomSizes.spaceBtwItems,),
                SettingsMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Get shopping delivery address", onTap: (){},),
                SettingsMenuTile(icon: Iconsax.location, title: "Safe Mode", subTitle: "Get shopping delivery address", onTap: (){},trailing: Switch(value: true, onChanged: (value) {},),),
                SettingsMenuTile(icon: Iconsax.security_user, title: "Load Data", subTitle: "Get shopping delivery address", onTap: (){},trailing: Switch(value: false, onChanged: (value) {},),),
                SettingsMenuTile(icon: Iconsax.image, title: "HD image Quality", subTitle: "Get shopping delivery address", onTap: (){},trailing: Switch(value: false, onChanged: (value) {},),),



              ],
            )
            ),
          ],
        ),
      ),
    );
  }
}

