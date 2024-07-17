import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_store/screens/home_screen.dart';
import 'package:online_store/widgets/custom_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/market.jpg'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 48),
                  ),
                  const Text(
                    'to our store',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 48),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Get your groceries in as fast as one hour',style: TextStyle(fontSize: 18,color: Colors.grey),),
                  const SizedBox(height: 20,),
                  CustomButton(onTapped: (){
                    Get.offAll(const HomeScreen());
                  }, text: 'Get started'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
