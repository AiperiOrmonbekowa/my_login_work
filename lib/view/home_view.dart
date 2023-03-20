import 'package:flutter/material.dart';
import 'package:new_app/constants/app_colors.dart';
import 'package:new_app/constants/app_styles.dart';
import 'package:new_app/constants/app_text.dart';
import 'package:new_app/view/login_view.dart';
import 'package:new_app/view/sign_up.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('', style: AppStyles.appBar),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
              child: Text(AppText.text1, style: AppStyles.textStyle)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 40),
            child: Image.asset('assets/images/surot.jpg'),
          ),
          SizedBox(
            width: 120,
            height: 32,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.grey),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              },
              child: const Text(
                AppText.login,
                style: AppStyles.login,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.grey),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: const Text(
              AppText.register,
              style: AppStyles.login,
            ),
          ),
          const SizedBox(
            height: 160,
          )
        ],
      ),
    );
  }
}
