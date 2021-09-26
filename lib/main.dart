import 'package:adolygu_backoffice/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/themes.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: const Layout(),
    );
  }
}
