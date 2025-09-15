import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/util/constants/image_strings.dart';
import 'package:ecommerce/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
part 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage(CustomImages.user),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ),
                    TextButton(onPressed: (){},child: Text("Change Profile Picture"),)
                  ],
                ),
              ),
              SizedBox(height: CustomSizes.spaceBtwItems/2,),
              Divider(),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              SectionHeading(title: "Profile Information",showActionButton: false,),
              ProfileMenu(onPressed: (){}, title: "Name", value: "Coding With I",),
              ProfileMenu(onPressed: (){}, title: "Username", value: "Coding With I",),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              Divider(),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              SectionHeading(title: "Persenal Information",showActionButton: false,),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              ProfileMenu(onPressed: (){}, title: "User ID", icon: Iconsax.copy,value: "3456",),
              ProfileMenu(onPressed: (){}, title: "E-mail", value: "Coding With I",),
              ProfileMenu(onPressed: (){}, title: "Phone Number", value: "01014695632",),
              ProfileMenu(onPressed: (){}, title: "Gender", value: "Male",),
              ProfileMenu(onPressed: (){}, title: "Date of Birth", value: "18 Jan 2000",),
              SizedBox(height: CustomSizes.spaceBtwItems,),
              Center(
                child: TextButton(onPressed: (){}, child: Text("Close Account",style: TextStyle(color: Colors.red),)),
              )





            ],
          ),
        ),
      ),
    );
  }
}

