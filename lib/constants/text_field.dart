import 'package:flutter/material.dart';
import 'package:new_app/constants/app_styles.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            fillColor: Colors.white30,
            filled: true,
            hintText: hintText,
            hintStyle: AppStyles.login1),
      ),
    );
  }
}
