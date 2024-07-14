import 'package:firstapp/common_widget/form/form_header_widget.dart';
import 'package:firstapp/constants/image_string.dart';
import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:firstapp/features/authentication/screens/login/login_screen.dart';
import 'package:firstapp/features/authentication/screens/signup/widget/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tdefultsize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: tBottom,
                    subtitle: tSignupSubtitle,
                    title: tSignuptitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("or"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: const Image(image: AssetImage(icongoogle),width: 20,),
                          onPressed: (){},
                          label: const Text(tSingnGoogle)),
                    ),
                    TextButton(onPressed: ()=> Get.to(()=>const LoginScreen()), child: const Text.rich(TextSpan(
                      children: [
                        TextSpan(text: tAlreadyHaveAnAccount),
                        TextSpan(text: tlogin)
                      ]
                    )))

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


