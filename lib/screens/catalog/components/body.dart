import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroitelstore/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Categories();
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": 'assets/icons/screw.svg', "text": "Крепёж"},
      {"icon": 'assets/icons/door.svg', "text": "Двери и напольные покрытия"},
      {"icon": 'assets/icons/drill.svg', "text": "Электро инструмент"},
      {"icon": 'assets/icons/paint.svg', "text": "Краски"},
      {"icon": 'assets/icons/saw.svg', "text": "Круги и диски"},
      {"icon": 'assets/icons/cement.svg', "text": "Сухие смеси"},
      {"icon": 'assets/icons/garden.svg', "text": "Садовый инвентарь"},
      {"icon": 'assets/icons/roof.svg', "text": "Кровельные материалы"},
      {"icon": 'assets/icons/hammer.svg', "text": "Ручной инструмент"},
      {"icon": 'assets/icons/lock.svg', "text": "Дверная фурнитура"},
      {"icon": 'assets/icons/sealant-gun.svg', "text": "Клеи, герметики, пена"},
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(20)),
        child: Column(
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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(6)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: getProportionateScreenHeight(60),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                    child: SvgPicture.asset(
                      icon,
                      width: getProportionateScreenWidth(100),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(10)),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: getProportionateScreenWidth(18)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
