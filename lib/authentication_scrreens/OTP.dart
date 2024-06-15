import 'package:flutter/material.dart';
import 'package:interior_design_app/Widgets/authenticationheadingtext.dart';
import 'package:interior_design_app/Widgets/button.dart';
import 'package:interior_design_app/authentication_scrreens/newpassword.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
             SizedBox(
              height: screenSize.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                  height:40 ,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Icon(Icons.arrow_back_ios_new,color: Color(0xff77207D),)),
                ),
              ],
            ),
            const headingtext(
                text1: 'Enter OTP code',
                text2: 'OTP code has sent to (021) 234- 55521'),
            PinCodeTextField(
              appContext: context,
              length: 4,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                selectedColor: const Color(0xff77207D),
                activeColor: const Color(0xff77207D),
                inactiveColor: const Color(0xffEBEBEB),
                disabledColor: const Color(0xffEBEBEB),
                  fieldHeight: 80,
                  fieldWidth: 80,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10)),
              onChanged: (Value) {},
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text('Resend Code',style: TextStyle(fontSize: 14,color: Color(0xff8D9795)),),
              Text('23:00',style: TextStyle(fontSize: 14,color: Color(0xff77207D)),)
            ],),
         Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Button(text1: 'Continue', ontap: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewPasswordScreen(),)); },),
            )
          ],
        ),
      ),
    );
  }
}
