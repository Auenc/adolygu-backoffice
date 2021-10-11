import 'package:adolygu_backoffice/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: Layout(),
    );
  }
}
