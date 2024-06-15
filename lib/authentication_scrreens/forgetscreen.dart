import 'package:flutter/material.dart';
import 'package:interior_design_app/Widgets/authenticationheadingtext.dart';
import 'package:interior_design_app/Widgets/button.dart';
import 'package:interior_design_app/authentication_scrreens/OTP.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});
  @override

  Widget build(BuildContext context) {
          final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                      SizedBox(height:screenSize.height*0.15 ,),
        
            const headingtext(text1: 'Forgot Password', text2:'Select which contact details should we use to reset your password'),
             SizedBox(height: screenSize.height * 0.01),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 80,
                          width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff8D9795))
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Icon(Icons.email),
                            SizedBox(width:10,),
                            Text('Send OTP via email\njhon231@gmail.com')
                          ],),
                        ),
                        ),
                         SizedBox(height: screenSize.height * 0.02),

                         Container(
                          height: 80,
                          width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff8D9795))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: const Row(
                            children: [
                            Icon(Icons.message),
                            SizedBox(width: 10,),
                              Text('Send OTP via SMS\n(406) 555- 3211')
                            ],
                          ),
                        ),
                        ),
                        const Spacer(),

                          Padding(
                           padding: EdgeInsets.only(bottom: 20),
                           child: Button(text1: 'Continue', ontap: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpScreen(),)); },),
                         ),
          ],
        ),
      ),
    );
  }
}