import 'package:flutter/material.dart';
import 'package:get_x/get.dart';
import 'package:test_ui/modules/screen/login_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(title: const Text("Login Screen")),
      body: Center(child: Text("Login Screen ${LoginController.to.counter}")),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Text("${controller.counter}"),
      ),
    );
  }
}
