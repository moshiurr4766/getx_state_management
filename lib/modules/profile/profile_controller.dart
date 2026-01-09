
import 'package:get_x/get.dart';


class ProfileController extends GetxController{
  var username = "Guest".obs;
  var email = "guest@example.com".obs;

  void updateProfile(String name , String mail){
    username.value = name;
    email.value= mail;
  }

  @override
  void onInit(){
    super.onInit();
    pragma("ProfileController initialized");
  }

  @override
  void onClose(){
    super.onClose();
    pragma("ProfileController disposed");
  }

  
} 