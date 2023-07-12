import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../ui/pages/about-us.dart';
import '../ui/pages/home.dart';
import '../ui/pages/profile.dart';
import '../ui/pages/account.dart';


class GlobalParameters{
  static final routes={
    "/home":(context)=>HomePage(),
    "/about-us":(context)=>AboutUsPage(),
   // "/contacts":(context)=>ContactsPage(),
    "/profile":(context)=>ProfilePage(),
    "/gallery":(context)=>AccountPage(),
  };

  static List<Map<String,dynamic>> menus=[
    {
      "title":"Home",
      "route":"/home",
      "icon":Icon(Icons.home,color: kdeepOrange,)
    },
    {
      "title":"About Us",
      "route":"/about-us",
      "icon":Icon(Icons.description,color: kdeepOrange)
    },
    {
      "title":"Account",
      "route":"/account",
      "icon":Icon(Icons.monetization_on,color: kdeepOrange)
    },
    {
      "title":"Profile",
      "route":"/profile",
      "icon":Icon(Icons.person,color: kdeepOrange)
    },
  ];
  static List<Map<String,dynamic>> menusBar=[
    {
      "title":"Search",
      "icon":Icon(Icons.search,color: kdeepOrange,)
    },
    {
      "title":"Add Trip",
      "icon":Icon(Icons.post_add,color: kdeepOrange)
    },
    {
      "title":"Favorite",
      "icon":Icon(Icons.stars,color: kdeepOrange)
    },
    {
      "title":"Help",
      "icon":Icon(Icons.support_agent_sharp,color: kdeepOrange)
    }
  ];
}