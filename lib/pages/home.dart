import 'package:adolygu_backoffice/controllers/counter_controller.dart';
import 'package:adolygu_backoffice/controllers/theme_controller.dart';
import 'package:adolygu_backoffice/pages/other.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    final ThemeController darkThemeController = Get.put(ThemeController());

    return Scaffold(
        body: Container(
      color: context.theme.backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks: ${counterController.counter.value}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => {Get.to(Other())},
              child: Text("Open other screen"),
            ),
            FloatingActionButton(
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeThemeMode(ThemeMode.light)
                    : Get.changeThemeMode(ThemeMode.dark);
              },
              child: Icon(Get.isDarkMode
                  ? Icons.wb_sunny_outlined
                  : Icons.bubble_chart),
            )
          ],
        ),
      ),
    ));
  }
}
