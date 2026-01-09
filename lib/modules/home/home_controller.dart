import 'package:get_x/get.dart';

class HomeController extends GetxController{
  var count = 0.obs;

  void increment(){
    count++;
  }

  @override
  void onInit(){
    super.onInit();
    pragma("HomeController initialized");
  }

  @override
  void onClose(){
    super.onClose();
    pragma("HomeController disposed");
  }

}