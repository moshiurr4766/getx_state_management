import 'package:get_x/get.dart';
import 'package:test_ui/modules/home/home_controller.dart';
import 'package:test_ui/modules/profile/profile_controller.dart';

class HomeBinding  extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController());
  }
}

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}