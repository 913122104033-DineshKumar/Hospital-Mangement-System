import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar appBar() {
  return AppBar(
    title: const Text(
      'Hospital Management System',
      style: TextStyle(
        color: Color(0xFF2ECC71),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications, color: Colors.black),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.logout_outlined, color: Colors.black),
      ),
    ],
  );
}

TextStyle textFieldStyle(Color color, FontWeight weight, double size) {
  return TextStyle(color: color, fontWeight: weight, fontSize: size);
}

ListTile listTile(Icon icon, Text title, VoidCallback onTap) {
  return ListTile(leading: icon, title: title, onTap: onTap);
}

Drawer drawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.all(0.0),
      children: [
        DrawerHeader(
          child: listTile(
            Icon(Icons.menu_rounded),
            Text(
              'Menu',
              style: TextStyle(
                color: Color(0xFF2ECC71),
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            () {},
          ),
        ),
        listTile(
          Icon(Icons.home),
          Text(
            'Home',
            style: textFieldStyle(Color(0xFF2ECC71), FontWeight.normal, 16.0),
          ),
          () {},
        ),
        listTile(
          Icon(Icons.person_add_alt_1),
          Text(
            'Profile',
            style: textFieldStyle(Color(0xFF2ECC71), FontWeight.normal, 16.0),
          ),
          () {},
        ),
        listTile(
          Icon(FontAwesomeIcons.calendarCheck),
          Text(
            'Appointments',
            style: textFieldStyle(Color(0xFF2ECC71), FontWeight.normal, 16.0),
          ),
          () {},
        ),
      ],
    ),
  );
}
