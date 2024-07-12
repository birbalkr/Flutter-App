
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(icongoogle),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(tSingnGoogle)),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () => Get.to(() => const SignupScreen()),
          child: const Text.rich(
            TextSpan(text: tDontHaveAnAccount, children: [
              TextSpan(text: tsigup, style: TextStyle(color: Colors.blue))
            ]),
          ),
        ),
      ],
    );
  }
}
