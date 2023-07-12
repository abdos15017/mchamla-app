import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';
class DrawerItemWidget extends StatelessWidget {
  String itemTitle;
  String route;
  Icon icon;

  DrawerItemWidget(this.itemTitle,this.route, this.icon, {super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
      leading: icon,
      trailing: Icon(Icons.arrow_right,color: kdeepOrange,),
      title: Text(itemTitle, style: TextStyle(fontSize: 18, color: kdeepOrange),),
    );
  }
}