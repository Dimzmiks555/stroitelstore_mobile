import 'package:flutter/material.dart';
import 'package:stroitelstore/components/custom_bottom_nav_bar.dart';
import 'package:stroitelstore/screens/home/components/body.dart';
import 'package:stroitelstore/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
