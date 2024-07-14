
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          child: Column(
        children: [
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tFullname),
                  prefixIcon: Icon(Icons.person_outline))),
          const SizedBox(height: tdefultsize - 20),
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tEmail), prefixIcon: Icon(Icons.email_outlined))),
          const SizedBox(height: tdefultsize - 20),
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tphone), prefixIcon: Icon(Icons.phone_android))),
          const SizedBox(height: tdefultsize - 20),
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tPasswd),
                  prefixIcon: Icon(Icons.password_outlined))),
          const SizedBox(height: tdefultsize - 10),
          SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text(tsigup))),
        ],
      )),
    );
  }
}
