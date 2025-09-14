import 'package:ecommerce/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_menu.dart' show NavigationMenu;

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
