import 'package:flutter/material.dart';
import 'package:stroitelstore/size_config.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(60),
      width: getProportionateScreenWidth(60),
      child: TextButton(
          style: ButtonStyle(
            // padding:
            //     MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
            // alignment: Alignment.center,
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            // backgroundColor: MaterialStateProperty.all(Colors.white)
          ),
          onPressed: () => Navigator.pop(context),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ],
          )),
    );
  }
}
