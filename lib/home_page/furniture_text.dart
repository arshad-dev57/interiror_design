import 'package:flutter/material.dart';

class Furnituretext extends StatelessWidget {
  const Furnituretext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(left: 20,top: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Alex!',
                    style: TextStyle(
                      wordSpacing: -2,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                   Text(
                    'NEW COLLECTION FROM VENACE',
                    style: TextStyle(
                      wordSpacing: -2,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD3D3D3)),
                  ),
                  
                ],
              ),

            );
  }
}