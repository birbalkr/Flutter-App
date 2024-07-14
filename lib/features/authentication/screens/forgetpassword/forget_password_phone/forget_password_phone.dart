import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_widget/form/form_header_widget.dart';
import '../../../../../constants/image_string.dart';
import '../forget_password_otp/otp_screen.dart';

class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tdefultsize),
          child: Column(
            children:[
              const SizedBox(
                height: tdefultsize * 4,
              ),
              const FormHeaderWidget(
                image: tBottom,
                subtitle: tForgetPasswdSubTitle,
                title: tForgetPassword,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight,),
              Form(child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      label: Text(tPhone),
                      hintText: tPhone,
                      prefixIcon: Icon(Icons.phone_outlined),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){ Get.to(() => const OtpScreen());}, child:const Text(tNext) ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
