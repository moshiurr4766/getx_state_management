import 'package:get_x/get_navigation/src/routes/get_route.dart';
import 'package:test_ui/modules/profile/profile_view.dart';
import 'package:test_ui/modules/profile1/profile1.dart';
import 'package:test_ui/modules/screen/dashboard.dart';
import 'package:test_ui/modules/screen/login.dart';
import '../modules/home/home_view.dart';
import '../modules/binding/home_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      //binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(name: AppRoutes.profile1, page: () => Profile1View1()),
     GetPage(name: AppRoutes.login, page: () => Login()),
    GetPage(name: AppRoutes.dashboard, page: () => Dashboard()),
  ];
}

