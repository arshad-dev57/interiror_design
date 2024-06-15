import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousal extends StatelessWidget {
  const Carousal({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
              options: CarouselOptions(
                initialPage: 3,
                
                height: 250,
                autoPlay: true,
                aspectRatio: 16 / 7,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 900),
                autoPlayCurve: Curves.easeIn,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
               // enlargeFactor: 2.0,
                //enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: [
                // 'assets/interior1.jpg',
                'assets/interior2.jpg',
                'assets/interior3.jpg',
              ].map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    );
                  },
                );
              }).toList(),
            );
  }
}