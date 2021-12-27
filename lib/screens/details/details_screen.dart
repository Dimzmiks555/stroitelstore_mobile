import 'package:flutter/material.dart';
import 'package:stroitelstore/screens/details/components/custom_app_bar.dart';
import 'package:stroitelstore/size_config.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final dynamic arguments = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      // backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final dynamic product;

  ProductDetailsArguments({required this.product});
}
