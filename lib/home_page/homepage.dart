import 'package:flutter/material.dart';
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:interior_design_app/home_page/carousalslider.dart';
import 'package:interior_design_app/home_page/catagory.dart';
import 'package:interior_design_app/home_page/furniture_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabCircularMenuPlus(
          fabCloseIcon: const Icon(Icons.cancel),
          ringDiameter: 300,
          ringColor: Colors.white,
          fabCloseColor: Colors.blue,
          fabColor: Colors.white,
          fabSize: 60,
          fabOpenIcon: const Icon(Icons.sort),
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon:const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ]),
      backgroundColor: const Color(0xffFFF0F5),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF0F5),
         leading: IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined,size: 25,)),
        centerTitle: true,
        title: const Text(
          'INTERIOR DESIGN',
          style: TextStyle(
              fontSize: 20,
              color: Color(0xffC0C0C0),
              fontStyle: FontStyle.italic),
        ),
        actions: [
          
             IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              const Furnituretext(),
              const SizedBox(
                height: 20,
              ),
              const Carousal(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Catagories',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: const [
                    Catagory(
                      image: 'bed.jpg',
                      text: 'BEDS',
                    ),
                    Catagory(
                      image: 'whitesofa.jpg',
                      text: "SOFA's",
                    ),
                    Catagory(
                      image: 'whitelamp.jpg',
                      text: 'LAMPS',
                    ),
                    Catagory(
                      image: 'sofa.jpg',
                      text: 'SOFAS',
                    ),
                    Catagory(image: 'mirror.jpg', text: 'MIRROR'),
                    Catagory(
                      image: 'washroom.jpg',
                      text: 'WASHROOM',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
