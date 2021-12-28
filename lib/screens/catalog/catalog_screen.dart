import 'package:flutter/material.dart';
import 'package:stroitelstore/components/custom_bottom_nav_bar.dart';
import 'package:stroitelstore/screens/details/components/custom_app_bar.dart';
import 'package:stroitelstore/size_config.dart';

import 'components/body.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);
  static String routeName = "/catalog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Каталог',
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
