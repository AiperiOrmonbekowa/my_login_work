import 'package:flutter/material.dart';
import 'package:new_app/constants/app_styles.dart';


class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(19),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.signin,
          ),
        ),
      ),
    );
  }
}
