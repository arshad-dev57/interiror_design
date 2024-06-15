import 'package:flutter/material.dart';
import 'package:interior_design_app/Widgets/authenticationheadingtext.dart';
import 'package:interior_design_app/Widgets/button.dart';
import 'package:interior_design_app/authentication_scrreens/Register.dart';
import 'package:interior_design_app/authentication_scrreens/forgetscreen.dart';
import 'package:interior_design_app/home_page/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void showHidePassword() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: ListView(
        children: [
          SizedBox(
            height: screenSize.height * 0.15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.035,
                vertical: screenSize.height * 0.03),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(screenSize.width * 0.05),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const headingtext(
                    text1: "Let's get you Login!",
                    text2: 'Enter your information below',
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenSize.width * 0.05)),
                      prefixIcon: Icon(Icons.account_circle,size: screenSize.width * 0.040,),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: screenSize.width * 0.040),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          fontSize: screenSize.width * 0.035,
                          color: Color(0xffBFBFBF)),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  TextField(
                    obscureText: _secureText,
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenSize.width * 0.05)),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: screenSize.width * 0.040),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                          fontSize: screenSize.width * 0.035,
                          color: Color(0xffBFBFBF)),
                      suffixIcon: IconButton(
                        onPressed: showHidePassword,
                        icon: _secureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        iconSize: screenSize.width * 0.040,
                        color: Color(0xffBFBFBF),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot(),));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: screenSize.width * 0.035,
                              color: Color(0xff77207D)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.04),
                  Center(
                      child: Button(
                    text1: 'LOGIN', ontap: () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),)); },
                  )),
                  SizedBox(height: screenSize.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          width: screenSize.width * 0.3,
                          color: Colors.black38,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenSize.width * 0.025,
                            right: screenSize.width * 0.025),
                        child: Text('or login with'),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          width: screenSize.width * 0.3,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenSize.width * 0.05),
                            border:
                                Border.all(color: Colors.black12, width: 2)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              SizedBox(width: screenSize.width * 0.01),
                              Text('Google')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.025),
                      Container(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(screenSize.width * 0.05),
                            border:
                                Border.all(color: Colors.black12, width: 2)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: screenSize.width * 0.01),
                              Text('Facebook')
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.09),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: screenSize.width * 0.03),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ));
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: screenSize.width * 0.03,
                                color: Color(0xff77207D)),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
