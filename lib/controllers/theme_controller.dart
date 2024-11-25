import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ThemeController extends GetxController {
  // Observable theme mode
  var themeMode = ThemeMode.light.obs;
  RxBool isDarkMode = false.obs;

  // Switch between light and dark themes
  void toggleTheme(bool value) {
    themeMode.value = themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    isDarkMode.value = !value;
  }

  // Save the theme preference (optional)
  void saveThemePreference() {
    // You can use shared_preferences or any other method to save the theme mode
  }
}
