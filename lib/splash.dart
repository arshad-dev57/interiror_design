import 'package:flutter/material.dart';
import 'package:interior_design_app/authentication_scrreens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: 
       Padding(
        padding: const EdgeInsets.only(bottom: 30,right: 30),
        child: InkWell(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
          },
          child: const CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey,
            child: 
            Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 50,),
          ),
        ),
      )
      ,
        body: Stack( 
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/designimage.jpg'))),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 16, top: MediaQuery.of(context).size.height / 6),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Interior Design ',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'In most living spaces, modern \nlounge chairs are a typical sight. ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
