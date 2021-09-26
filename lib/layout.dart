import 'package:adolygu_backoffice/helpers/responsiveness.dart';
import 'package:adolygu_backoffice/widgets/large_screen.dart';
import 'package:adolygu_backoffice/widgets/small_screen.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const ResponsivenessWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
