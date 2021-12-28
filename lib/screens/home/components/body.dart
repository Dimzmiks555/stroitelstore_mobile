import 'package:flutter/material.dart';
import 'package:stroitelstore/constants.dart';
import 'package:stroitelstore/screens/home/components/hits.dart';
import 'package:stroitelstore/screens/home/components/home_banner.dart';
import 'package:stroitelstore/size_config.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeBanner(),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            HomeOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Hits(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeOffers extends StatelessWidget {
  const HomeOffers({
    Key? key,
  }) : super(key: key);

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
                "Специально для Вас",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    color: Colors.black),
              )
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(10),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(20)),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 12,
                        offset: Offset(0, 5))
                  ]),
                  child: SizedBox(
                    height: getProportionateScreenWidth(120),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/banner1.jfif",
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(15)),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10.0)
                  ]),
                  child: SizedBox(
                    height: getProportionateScreenWidth(120),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/banner2.png",
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
              //   child: SizedBox(
              //     height: getProportionateScreenWidth(200),
              //     child: ClipRRect(
              //       borderRadius: BorderRadius.circular(20),
              //       child: Stack(
              //         children: [Image.asset(
              //           "assets/images/banner1.jfif",
              //           fit: BoxFit.cover,
              //         )],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: AspectRatio(
                aspectRatio: 4,
                child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    child: SvgPicture.asset('assets/icons/LOGO.svg'))),
          ),
          SizedBox(height: 10),
          Container(
            width: SizeConfig.screenWidth! * 0.9,
            height: 50,
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Найти товар",
                    prefixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(20),
                        vertical: getProportionateScreenHeight(16)))),
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": 'assets/icons/door.svg', "text": "Входные двери"},
      {"icon": 'assets/icons/drill.svg', "text": "Электро инструмент"},
      {"icon": 'assets/icons/paint.svg', "text": "Краски"},
      {"icon": 'assets/icons/saw.svg', "text": "Круги и диски"},
    ];

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  text: categories[index]['text'],
                  icon: categories[index]['icon'],
                  press: () {}))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(80),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Color(0xFFFFEEEE),
                    border: Border.all(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: getProportionateScreenWidth(14)),
            )
          ],
        ),
      ),
    );
  }
}
