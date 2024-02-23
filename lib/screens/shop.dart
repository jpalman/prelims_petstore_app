import 'package:palman_petshop_app/custom/myBottomNav.dart';

import 'package:palman_petshop_app/screens/cart.dart';
import 'package:palman_petshop_app/screens/home.dart';

import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNav(
          selectedIndex: _selectedIndex,
          onTabTapped: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
        body: screens[_selectedIndex]);
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const HomeScreen(),
    const PetCart(),
    const HomeScreen()
  ];
}