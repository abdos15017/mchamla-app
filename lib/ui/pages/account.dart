import 'package:flutter/material.dart';
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
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