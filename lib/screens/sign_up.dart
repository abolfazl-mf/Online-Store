import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_store/contriollers/user_controller.dart';
import 'package:online_store/screens/login_screen.dart';

import '../widgets/custom_button.dart';
import 'background_ui.dart';

class SignUpScreen extends GetView<UserController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGroundUi(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            'assets/images/splashlogo.png',
            width: 80,
            height: 70,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'ثبت نام',
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'برای ایجاد حساب کاربری حساب زیر را وارد نمایید',
          style: TextStyle(color: Colors.blueGrey, fontSize: 16),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'نام',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            controller: controller.nameController,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'ایمیل',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            controller: controller.emailController,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'رمز عبور',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
          child: Obx(
            () => TextField(
              controller: controller.passController,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.changeShowPassword();
                      },
                      icon: Icon(
                        controller.showPassword.value?Icons.visibility:Icons.visibility_off_rounded,
                        color: Colors.grey,
                      ))),
              obscureText: !controller.showPassword.value,
              obscuringCharacter: '\u25Cf',
            ),
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        Row(
          children: [
            const Icon(Icons.check_circle_outline),
            const SizedBox(
              width: 25,
            ),
            RichText(
              text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.bold,
                    color: Color(0xF5000000),
                  ),
                  children: [
                    const TextSpan(text: 'با '),
                    TextSpan(
                        text: 'شرایط و قوانین ',
                        style: const TextStyle(color: Colors.teal),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(
                              const SignUpScreen(),
                              transition: Transition.zoom,
                              duration: const Duration(seconds: 1),
                            );
                          }),
                    const TextSpan(text: 'برنامه موافقم'),
                  ]),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          onTapped: () {
            controller.signUp();
          },
          text: 'ثبت نام',
          textStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color(0xF5000000),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: RichText(
            text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xF5000000),
                ),
                children: [
                  const TextSpan(text: 'حساب کاربری دارید؟ '),
                  TextSpan(
                      text: 'ورود',
                      style: const TextStyle(color: Colors.teal),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(
                            const LoginScreen(),
                            transition: Transition.native,
                            duration: const Duration(seconds: 1),
                          );
                        }),
                ]),
          ),
        ),
      ],
    );
  }
}
