import 'package:flutter/material.dart';

import '../../global/global.params.dart';
import '../../utilities/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide.none,
              ),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white10,
                      Colors.white
                    ]
                )
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/img/logo_app.png"),
                backgroundColor: Colors.white,
                radius: 50,
              ),
            ),
          ),
    ...(GlobalParameters.menus).map((e){
            return Column(
              children: [
                ListTile(
                    title: Text('${e['title']}',style: kBodyText),
                    leading: e['icon'],
                    trailing: const Icon(Icons.arrow_right,color: kdeepOrange,),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(context, '${e['route']}');
                    },
                    ),
                const Divider(color: kdeepOrange,height: 4,)
              ],
            );
          }
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,

            child: ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.logout,
                size: 35.0,
              ),
            ),
          )


        ],

      ),
    );
  }
}