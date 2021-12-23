import 'package:flutter/material.dart';
import 'package:stroitelstore/constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: kPrimaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.library_books), label: '2'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_sharp), label: '3'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '4'),
      ],
    );
  }
}
