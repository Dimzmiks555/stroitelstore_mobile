import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:stroitelstore/size_config.dart';

class Body extends StatefulWidget {
  final dynamic product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  dynamic product;

  @override
  void initState() {
    product = widget.product;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(
                'https://admin.stroitelstore.ru/uploads/${product?["images"][0]["url"]}'),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  product['title'],
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Text(
                  "${product['prices_and_count']['price'].toString()} ₽",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: getProportionateScreenWidth(40)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
