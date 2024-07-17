import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController{
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();


  TextEditingController emailControllerLogin=TextEditingController();
  TextEditingController passControllerLogin=TextEditingController();

  RxBool showPassword= false.obs;
  RxBool showPasswordLogin= false.obs;


  void changeShowPassword(){
    showPassword.value=!showPassword.value;
  }
  void changeShowPasswordLogin(){
    showPasswordLogin.value=!showPasswordLogin.value;
  }

  signUp() async{

  }
}