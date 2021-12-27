import 'package:flutter/material.dart';
import 'package:stroitelstore/components/rounded_icon_button.dart';
import 'package:stroitelstore/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Row(
              children: [RoundedIconButton()],
            ),
          ),
        ],
      ),
    );
  }
}
