import 'package:adolygu_backoffice/constants/strings.dart';
import 'package:adolygu_backoffice/widgets/custom_text.dart';
import 'package:adolygu_backoffice/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: ResponsivenessWidget.isLargeScreen(context)
          ? Row()
          : IconButton(
              onPressed: () => key.currentState!.openDrawer(),
              icon: const Icon(Icons.menu),
            ),
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: Strings.appTitle,
              size: 20,
              color: Theme.of(context).primaryTextTheme.headline1?.color,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          IconButton(
            onPressed: () => {
              Get.isDarkMode
                  ? Get.changeThemeMode(ThemeMode.light)
                  : Get.changeThemeMode(ThemeMode.dark)
            },
            icon: const Icon(Icons.settings),
          ),
          const SizedBox(
            width: 1,
            height: 22,
          ),
          const SizedBox(
            width: 24,
          ),
          const CustomText(text: "Lewis Campbell"),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: const CircleAvatar(
                child: Icon(Icons.person_outline),
              ),
            ),
          )
        ],
      ),
    );
