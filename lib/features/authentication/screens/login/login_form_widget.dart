import 'package:firstapp/features/core/screen/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import '../forgetpassword/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tEmail),
                  prefixIcon: Icon(Icons.person_outline_outlined))),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tPasswd),
                  prefixIcon: Icon(Icons.fingerprint_outlined))),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: const Text(tForgetPassword))),
          SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () { Get.to(() => const Dashboard());}, child: const Text(tlogin)))
        ],
      ),
    ));
  }
}

