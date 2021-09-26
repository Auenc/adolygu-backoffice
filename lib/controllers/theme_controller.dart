import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDarkTheme = false.obs;

  void toggleDarkThem() {
    isDarkTheme.toggle();
    print(isDarkTheme.value);
  }
}
