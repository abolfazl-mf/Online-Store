import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_store/contriollers/user_controller.dart';
import 'package:online_store/screens/background_ui.dart';
import 'package:online_store/screens/sign_up.dart';
import 'package:online_store/widgets/custom_button.dart';

class LoginScreen extends GetView<UserController> {
  const LoginScreen({Key? key}) : super(key: key);

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
          'ورود',
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'لطفا برای ورود،ایمیل و رمز عبور خود را وارد نمایید',
          style: TextStyle(color: Colors.blueGrey, fontSize: 16),
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
            controller: controller.emailControllerLogin,
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
              controller: controller.passControllerLogin,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.changeShowPasswordLogin();
                      },
                      icon: Icon(
                        controller.showPasswordLogin.value?Icons.visibility:Icons.visibility_off_rounded,
                        color: Colors.grey,
                      ))),
              obscureText: !controller.showPasswordLogin.value,
              obscuringCharacter: '\u25Cf',
            ),
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'رمز عبور خود را فراموش کرده اید؟',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xF5000000),
                  fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          onTapped: () {},
          text: 'ورود',
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
                  const TextSpan(text: 'حساب کاربری ندارید؟ '),
                  TextSpan(
                      text: 'ثبت نام',
                      style: const TextStyle(color: Colors.teal),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(
                            const SignUpScreen(),
                            transition: Transition.zoom,
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
