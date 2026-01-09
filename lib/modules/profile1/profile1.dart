import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'profile1_controller.dart';

class Profile1View1 extends StatelessWidget {
  Profile1View1({super.key});

  final Profile1Controller1 controller = Get.put(Profile1Controller1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile1'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Text(
                'Name: ${controller.name.value}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 8),
            Obx(
              () => Text(
                'Email: ${controller.email.value}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: controller.updateProfile,
              child: const Text('Update Profile'),
            ),

            // view file
            GetX<Profile1Controller1>(
              builder: (controller) {
                print("count 1 rebuild");
                return Text('${controller.count1.value}');
              },
            ),
            GetX<Profile1Controller1>(
              builder: (controller) {
                print("count 2 rebuild");
                return Text('${controller.count2.value}');
              },
            ),
            GetX<Profile1Controller1>(
              builder: (controller) {
                print("count 3 rebuild");
                return Text('${controller.sum}');
              },
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: controller.incrementCopunt,
              child: Text("Increment Counts"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: controller.loggedInUser,
              child: Text("User Login"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: controller.loggedOutUser,
              child: Text("User Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
