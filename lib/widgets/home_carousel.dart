import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  int currentIndex = 0;
  final CarouselSliderController indicatorController =
      CarouselSliderController();
  final List<String> images = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: indicatorController,
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) => {
              setState(() {
                currentIndex = index;
              })
            },
            autoPlayInterval: Duration(seconds: 3),
          ),
          items:
              images.map((path) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(path, fit: BoxFit.cover, width: 1000),
                );
              }).toList(),
        ),
        SizedBox(height: 10.0),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex, 
          count: images.length,
          effect: ExpandingDotsEffect(
            activeDotColor: Color(0xFF2ECC71),
            dotHeight: 8,
            dotWidth: 8
          ),
        )
      ],
    );
  }
}
