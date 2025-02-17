import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_store/screens/login_screen.dart';
import 'package:online_store/services/app_buinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Online Market',
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      locale: const Locale('fa','IR'),
      home: const LoginScreen(),
    );
  }
}
