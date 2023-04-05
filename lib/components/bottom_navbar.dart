

import 'package:e_food_cort/components/list_products.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 18,
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.assignment,
            size: 18,
          ),
          label: 'Pesanan',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            size: 18,
          ),
          label: 'Wishlist',
        ),
      ],
      currentIndex: _selectedNavbar,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _changeSelectedNavBar,
    );
  }
}