import 'package:flutter/material.dart';
import 'package:interior_design_app/Widgets/authenticationheadingtext.dart';
import 'package:interior_design_app/Widgets/button.dart';
import 'package:interior_design_app/authentication_scrreens/login.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController password = TextEditingController();
  bool securetext = true;
  showHidePassword() {
    setState(() {
      securetext = !securetext;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(child: Icon(Icons.arrow_back_ios_new,color: Color(0xff77207D),)),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            const headingtext(
              text1: 'Enter New Password',
              text2: 'Please enter new password',
            ),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            TextField(
              obscureText: securetext,
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(screenSize.width * 0.05)),
                        prefixIcon: Icon(Icons.lock),
                labelText: 'Enter New Password',
                labelStyle: TextStyle(fontSize: screenSize.width * 0.040),
                hintText: 'Enter Your Password',
                hintStyle: TextStyle(
                    fontSize: screenSize.width * 0.035,
                    color: Color(0xffBFBFBF)),
                suffixIcon: IconButton(
                  onPressed: showHidePassword,
                  icon: securetext
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  iconSize: screenSize.width * 0.040,
                  color: Color(0xffBFBFBF),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
             TextField(
              obscureText: securetext,
              controller: password,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(screenSize.width * 0.05)),
                        prefixIcon: Icon(Icons.lock),
                labelText: 'Re-enter Password',
                labelStyle: TextStyle(fontSize: screenSize.width * 0.040),
                hintText: 'Enter Your Password',
                hintStyle: TextStyle(
                    fontSize: screenSize.width * 0.035,
                    color: Color(0xffBFBFBF)),
                suffixIcon: IconButton(
                  onPressed: showHidePassword,
                  icon: securetext
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  iconSize: screenSize.width * 0.040,
                  color: Color(0xffBFBFBF),
                ),
              ),
            ),
            //  SizedBox(
            //   height: screenSize.height * 0.48,
            // ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child:  Button(text1: 'Save', ontap: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),)); },),
            ),
          ],
        ),
      ),
    );
  }
}
