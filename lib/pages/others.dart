import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashbord/controller/counter_controller.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();
  OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Screen was clicked ${_counterController.counter.value}'),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Open Other Screen"),
          ),
        ],
      ),
    );
  }
}
