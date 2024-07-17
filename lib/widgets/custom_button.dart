import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({
     Key? key, required this.onTapped,
     required this.text,
     this.textStyle = const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),
   }) : super(key: key);
final String text;
  final VoidCallback onTapped;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(17),
      color: Colors.amber,
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        splashColor: Colors.amberAccent,
        onTap: onTapped,
        child: SizedBox(
          width: Get.width,
          height: 67,
          child: Center(
            child: Text(
              text,style: textStyle,
            ),
          ),
        ),
      ),
    );

  }
}
