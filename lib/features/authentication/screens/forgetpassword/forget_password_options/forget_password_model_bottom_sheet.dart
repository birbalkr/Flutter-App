import 'package:firstapp/features/authentication/screens/forgetpassword/forget_password_mail/forget_password_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
              padding: EdgeInsets.all(tdefultsize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tForgetPasswdTitle,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    tForgetPasswdSubTitle,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ForgetPasswordBtnWidget(
                      btnIcon: Icons.mail_outline_outlined,
                      title: tEmail,
                      subTitle: tResetViaMail,
                      onTap: () {
                        Navigator.pop(context);
                        Get.to(()=> ForgetPasswordMail());}),
                  SizedBox(
                    height: 20.0,
                  ),
                  ForgetPasswordBtnWidget(
                      btnIcon: Icons.mobile_friendly_outlined,
                      title: tPhone,
                      subTitle: tResetPhone,
                      onTap: () {})
                ],
              ),
            ));
  }
}
