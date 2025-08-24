import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/forget_password.dart' show ForgetPassword, ForgetPasswordScreen;
import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/onboarding/onboarding.dart';
import 'features/authentication/screens/password_configuration/forget_password.dart' show ForgetPassword;
import 'features/authentication/screens/signup/signup.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const ForgetPasswordScreen(),
    );
  }
}
