import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stroitelstore/constants.dart';
import 'package:stroitelstore/models/Product.dart';
import 'package:stroitelstore/screens/details/details_screen.dart';
import 'package:stroitelstore/size_config.dart';

class Hits extends StatefulWidget {
  const Hits({Key? key}) : super(key: key);

  @override
  _HitsState createState() => _HitsState();
}

class _HitsState extends State<Hits> {
  List _loadedPhotos = [];

  Future<void> _fetchData() async {
    const API_URL = 'https://admin.stroitelstore.ru/api/hits';

    final response = await http.get(Uri.parse(API_URL));
    final data = json.decode(response.body);

    setState(() {
      _loadedPhotos = data["rows"];
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            children: [
              Text(
                "Популярные товары",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  _loadedPhotos.length,
                  (index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, DetailsScreen.routeName),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionateScreenWidth(20)),
                            child: SizedBox(
                              width: getProportionateScreenWidth(140),
                              child: Column(
                                children: [
                                  AspectRatio(
                                      aspectRatio: 1.02,
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            getProportionateScreenWidth(10)),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Image.network(
                                            'https://admin.stroitelstore.ru/uploads/${_loadedPhotos[index]["images"][0]["url"]}'),
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    _loadedPhotos[index]['title'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            getProportionateScreenWidth(14)),
                                    maxLines: 3,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          "${_loadedPhotos[index]['prices_and_count']['price'].toString()} ₽",
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      24),
                                              fontWeight: FontWeight.w600))
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: TextButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    kPrimaryColor)),
                                        child: Text(
                                          'В корзину',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ))
            ],
          ),
        )
      ],
    );
  }
}
