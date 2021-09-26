import 'package:adolygu_backoffice/controllers/counter_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController _counterController = Get.find();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Button was clicked ${_counterController.counter.value}"),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () => {Get.back()},
            child: Text("Open other screen"),
          )
        ],
      ),
    );
  }
}
