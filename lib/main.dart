import 'package:ebook/features/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/theme_controller.dart';
import 'utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize the ThemeController
  final ThemeController themeController = Get.put(ThemeController());

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ebook App',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: themeController.themeMode.value,
        home: const MainPage(),
      ),
    );
  }
}
