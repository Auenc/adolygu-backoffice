import 'package:adolygu_backoffice/helpers/responsiveness.dart';
import 'package:adolygu_backoffice/widgets/large_screen.dart';
import 'package:adolygu_backoffice/widgets/small_screen.dart';
import 'package:adolygu_backoffice/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  Layout({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const ResponsivenessWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
