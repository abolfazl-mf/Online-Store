import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_store/contriollers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);

  SplashScreenController controller=Get.put<SplashScreenController>(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splashlogo.png',height: 220,width: 220,),
            const SizedBox(height: 50,),
            const Text('TOSE GAR',style: TextStyle(fontSize: 60)),
            const SizedBox(height: 10,),
            const Text('Online Market',style: TextStyle(fontSize: 20)),

          ],
        ),
      ),
    );
  }
}
