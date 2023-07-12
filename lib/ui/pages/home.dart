import 'package:first_app/ui/pages/bottom-bar.dart';
import 'package:first_app/ui/pages/search.dart';
import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import '../../ui/widgets/drawer.widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kdeepOrange,

      ),
      //body: const BottomBar(),

      bottomNavigationBar: const BottomBar()
    );
  }
}
