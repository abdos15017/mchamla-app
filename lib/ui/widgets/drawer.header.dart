import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';
class MyDrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  kdeepOrange, Colors.white
                ]
            )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("images/logo.png"),
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("images/logo.png"),
            ),
          ],
        ));
  }
}