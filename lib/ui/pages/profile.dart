import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter Value => ${counter}",style: Theme.of(context).textTheme.bodyText2,
            ),


          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: (){
              setState(() {
                --counter;
              });
            },child: Icon(Icons.remove),
          ),
          SizedBox(width: 20,),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: (){
              setState(() {
                ++counter;
              });
            },child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}