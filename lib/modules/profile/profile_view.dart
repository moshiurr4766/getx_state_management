import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:test_ui/modules/screen/login_controller.dart';
import 'profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    if (Get.isRegistered<ProfileController>()) {
      Get.find<ProfileController>();
    } else {
      Get.put(ProfileController());
    }
    //final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text(
              'Name: ${controller.username.value}',
              style: const TextStyle(fontSize: 20),
            )),
            const SizedBox(height: 8),
            Obx(() => Text(
              'Email: ${controller.email.value}',
              style: const TextStyle(fontSize: 18),
            )),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                controller.updateProfile(
                  'Moshiur Rahman',
                  'moshiurr1299@gmail.com',
                );
              },
              child: const Text('Update Profile'),
            ),

            //You can use Controller instance directly on GetBuilder value
            SizedBox(
              height: 20,
            ),

            GetBuilder<LoginController>(init: LoginController(),builder: (value) => Text("${value.counter}"),),
          ],
        ),
      ),
    );
  }
}
