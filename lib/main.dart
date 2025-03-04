import 'package:flutter/material.dart';
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
  TextStyle textFieldStyle(Color color, FontWeight weight, double size) {
    return TextStyle(color: color, fontWeight: weight, fontSize: size);
  }

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
            child: Row(
            ),
          ),
        ],
      ),
    );
  }
}
