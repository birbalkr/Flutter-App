
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

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
                      label: Text(tpasswd),
                      prefixIcon: Icon(Icons.fingerprint_outlined))),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: const Text(tForgetPassword))),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: const Text(tlogin)))
            ],
          ),
        ));
  }
}
