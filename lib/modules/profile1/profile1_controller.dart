import 'package:get_x/get.dart';

class Profile1Controller1 extends GetxController {
  var name = 'Guest'.obs;
  var email = 'guest@email.com'.obs;

  void updateProfile() {
    name.value = 'Moshiur Rahman';
    email.value = 'moshiurr1299@gmail.com';
  }

  final count1 = 1.obs;
  final count2 = 0.obs;
  int get sum => count1.value + count2.value;

  void incrementCopunt(){
    count1.value++;
    count2.value++;
  }

  @override
  void onInit() {
    super.onInit();
    pragma("Profile1Controller1 initialized");
  }
  @override
  void onClose() {
    super.onClose();
    pragma("Profile1Controller1 disposed");
  }
}
