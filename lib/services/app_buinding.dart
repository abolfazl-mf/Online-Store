

import 'package:get/get.dart';
import 'package:online_store/contriollers/splash_screen_controller.dart';
import 'package:online_store/contriollers/user_controller.dart';

class AppBinding implements Bindings{
  @override
  void dependencies() {
   Get.put<SplashScreenController>(SplashScreenController());
   Get.put<UserController>(UserController());
  }

}