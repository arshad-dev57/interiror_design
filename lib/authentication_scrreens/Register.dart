import 'package:flutter/material.dart';
import 'package:interior_design_app/Widgets/authenticationheadingtext.dart';
import 'package:interior_design_app/Widgets/button.dart';
import 'package:interior_design_app/authentication_scrreens/login.dart';
import 'package:interior_design_app/home_page/homepage.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController text1 = TextEditingController();
  TextEditingController password = TextEditingController();
  bool securetext = true;

  void texthide() {
    setState(() {
      securetext = !securetext;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: screenSize.height,
          ),
          child: IntrinsicHeight(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * 0.15),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenSize.width * 0.035,
                      vertical: screenSize.height * 0.03,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.05),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const headingtext(
                          text1: "Register your new account",
                          text2: 'Enter your information below',
                        ),
                        SizedBox(height: screenSize.height * 0.03),
                        TextField(
                          controller: text1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    screenSize.width * 0.05)),
                            hintText: 'Enter your name',
                            hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.035,
                                color: Color(0xffBFBFBF)),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        TextField(
                          controller: text1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    screenSize.width * 0.05)),
                            hintText: 'Enter Email Address',
                            hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.035,
                                color: Color(0xffBFBFBF)),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        TextField(
                          controller: text1,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    screenSize.width * 0.05)),
                            hintText: '(001) Phone Number',
                            hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.035,
                                color: Color(0xffBFBFBF)),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        TextField(
                          obscureText: securetext,
                          controller: password,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    screenSize.width * 0.05)),
                            labelText: 'Password',
                            labelStyle:
                                TextStyle(fontSize: screenSize.width * 0.040),
                            hintText: 'Enter Your Password',
                            hintStyle: TextStyle(
                                fontSize: screenSize.width * 0.035,
                                color: Color(0xffBFBFBF)),
                            suffixIcon: IconButton(
                              onPressed: texthide,
                              icon: securetext
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                              iconSize: screenSize.width * 0.040,
                              color: Color(0xffBFBFBF),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Button(text1: 'Register', ontap: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),)); },),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already a member?",
                              style:
                                  TextStyle(fontSize: screenSize.width * 0.03),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: screenSize.width * 0.03,
                                    color: Color(0xff77207D)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
