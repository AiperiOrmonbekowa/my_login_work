import 'package:flutter/material.dart';
import 'package:new_app/constants/app_colors.dart';
import 'package:new_app/constants/my_button.dart';
import '../constants/app_styles.dart';
import '../constants/app_text.dart';
import '../constants/text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({
    super.key,
  });
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 110,
          ),
          const Icon(
            Icons.lock_person,
            size: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 69, vertical: 40),
            child: Text(
              AppText.welcome,
              style: AppStyles.welcome,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          MyTextField(
            controller: usernameController,
            hintText: AppText.user,
            obscureText: false,
          ),
          const SizedBox(
            height: 12,
          ),
          MyTextField(
            controller: emailController,
            hintText: AppText.email,
            obscureText: false,
          ),
          const SizedBox(
            height: 12,
          ),
          MyTextField(
            controller: passwordController,
            hintText: AppText.password,
            obscureText: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MyButton(
            onTap: signUserUp,
            text: AppText.signup,
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                AppText.textt3,
                style: AppStyles.login1,
              ),
              SizedBox(
                width: 9,
              ),
              Text(
                AppText.textt4,
                style: AppStyles.nowreg,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
