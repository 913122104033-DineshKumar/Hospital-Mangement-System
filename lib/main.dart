import 'package:flutter/material.dart';
import 'package:hospital_management_system/widgets/home_carousel.dart';
import 'package:hospital_management_system/widgets/navbar.dart';

void main() => runApp(
  MaterialApp(
    title: 'Hospital Management System',
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ),
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x2ECC71), Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                HomeCarousel(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
