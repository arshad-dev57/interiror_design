import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> imagepath = [
    'assets/bed.jpg',
    'assets/sofa.jpg',
    'assets/whitelamp.jpg',
    'assets/whitesofa.jpg',
    'assets/Washroom.jpg',
    'assets/mirror.jpg',
    'assets/sofa1.jpg',
    'assets/sofa2.jpg',
    'assets/sofa3.jpg',
    'assets/sofa4.jpg'
  ];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF0F5),
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  'assets/sofa.jpg'),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_back_ios))),
                      Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(onPressed: (){}, icon:const Icon(Icons.home)))
                  
              ],
            ),
            ),
            SizedBox(
              height: 1050,
              width: double.infinity,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:
                    imagepath.length, // Use the length of the imagepath list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              imagepath[index],
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(Icons.favorite_border)),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                // borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'SALE 30%',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              '\$500',
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              // child: Row(
                              //   children: [
                              //     const Icon(Icons.remove),
                              //     const SizedBox(
                              //       width: 4,
                              //     ),
                              //     Text('$counter'),
                              //     const SizedBox(
                              //       width: 4,
                              //     ),
                              //     IconButton(
                              //         onPressed: () {
                              //           setState(() {
                              //             counter++;
                              //           });
                              //         },
                              //         icon: const Icon(Icons.add))
                              //   ],
                              // ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
