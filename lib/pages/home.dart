import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_dashbord/controller/counter_controller.dart';
import 'package:web_dashbord/pages/others.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Clicks: ${counterController.counter.value}")),
            const SizedBox(
              height: 10.0,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.to(OtherScreen());
                },
                child: const Text("Open Other Screen"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
