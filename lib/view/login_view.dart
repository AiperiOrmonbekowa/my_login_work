import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants/app_colors.dart';
import 'package:new_app/constants/app_styles.dart';
import '../constants/app_text.dart';
import '../constants/my_button.dart';
import '../constants/text_field.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
            const Icon(
              Icons.lock_person,
              size: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 44, vertical: 30),
              child: Text(
                AppText.welcome,
                style: AppStyles.welcome,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            MyTextField(
              controller: emailController,
              hintText: AppText.user,
              obscureText: false,
            ),
            const SizedBox(
              height: 22,
            ),
            MyTextField(
              controller: passwordController,
              hintText: AppText.email,
              obscureText: false,
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    AppText.password1,
                    style: AppStyles.login2,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(onTap: signUserIn, text: AppText.signin),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      AppText.text2,
                      style: AppStyles.signin1,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    height: 70,
                  ),
                  SizedBox(
                    width: 65,
                    child: Image.asset(
                      'assets/images/pinterest.png',
                      height: 65,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  AppText.text3,
                  style: AppStyles.login1,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  AppText.text4,
                  style: AppStyles.nowreg,
                ),
                SizedBox(
                  height: 56,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
