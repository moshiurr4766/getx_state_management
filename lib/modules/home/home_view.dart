import 'package:flutter/material.dart';
import 'package:get_x/get.dart';

import 'package:test_ui/modules/home/home_controller.dart';
import 'package:test_ui/modules/profile/profile_view.dart';
import 'package:test_ui/modules/profile1/profile1.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    if (Get.isRegistered<HomeController>()) {
      Get.find<HomeController>();
    } else {
      Get.put(HomeController());
    }
    // final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Home"), centerTitle: true),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Count: ${controller.count}",
                style: const TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ProfileView());
              },
              child: const Text("Go to Profile"),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>  Profile1View1());
              },
              child: const Text("Go to Profile1"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
