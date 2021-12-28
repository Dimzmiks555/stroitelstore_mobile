import 'package:flutter/material.dart';
import 'package:stroitelstore/size_config.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
          color: Color(0xFFCC3232), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'При заказе через приложение или сайт',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Скидка 5%',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(32)))
          ],
        ),
      ),
    );
  }
}
