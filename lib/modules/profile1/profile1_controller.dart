import 'package:get_x/get.dart';
import 'package:test_ui/modules/profile1/preferences.dart';

class Profile1Controller1 extends GetxController {

  //Profile info example
  var name = 'Guest'.obs;
  var email = 'guest@email.com'.obs;

  void updateProfile() {
    name.value = 'Moshiur Rahman';
    email.value = 'moshiurr1299@gmail.com';
  }

  //Increment count example

  final count1 = 1.obs;
  final count2 = 0.obs;
  int get sum => count1.value + count2.value;

  void incrementCopunt(){
    count1.value++;
    count2.value++;
  }


  //Check user Login status example
  // Login state
  var isLoggedIn = false.obs;

  void fireRute(bool loggedIn) {
    if (loggedIn) {
      print("✅ User is logged in → Navigate to Dashboard");
       Get.toNamed('/dashboard');
    } else {
      print("❌ User is logged out → Navigate to Login");
       Get.toNamed('/login');
    }
  }

  void loggedInUser(){
    isLoggedIn.value = true;
  }

  void loggedOutUser(){
    isLoggedIn.value = false;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    // Initialize any necessary state or perform setup tasks
    ever(isLoggedIn, fireRute);
    isLoggedIn.value = await Preferences.hasToken();
    pragma("Profile1Controller1 initialized");
  }
  @override
  void onClose() {
    super.onClose();
    pragma("Profile1Controller1 disposed");
  }
}
