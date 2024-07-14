import 'package:firstapp/constants/sizes.dart';
import 'package:firstapp/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tdefultsize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0
            ),),
            Text(tOtpSubTitle.toUpperCase(),style: GoogleFonts.mochiyPopOne(
                fontWeight: FontWeight.bold,
                fontSize: 15.0
            ),),
            const SizedBox(height: 40.0,),
            const Text("$tOtpMessage support@coding.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            OtpTextField(
                numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(tNext)))
          ],
        ),
      ),
    );
  }
}
