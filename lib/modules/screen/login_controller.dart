import 'package:get_x/get.dart';


class LoginController extends GetxController{

  static LoginController get to => Get.find();

  int counter = 0;
  void increment(){
    counter++;
    update();
  }

  
}