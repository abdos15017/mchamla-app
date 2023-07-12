import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../widgets/auth.header.dart';
import '../widgets/button.dart';
import '../widgets/text-field-input.dart';
import '../../utilities/constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  bool isRider=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
  }
  String password = "";
  bool isPwdVisible = true;
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                headerSignup(),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  child: fullNameField(),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  child: emailField(),
                ),
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                  child: phoneField(),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                 child: pwdField(),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                 child: confPwdField(),
                ),
                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 50),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    /*child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )*/
                      child: Button(
                      name: 'Sign Up',
                      onpressed: (() {
                      })

                  ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have Already Member?  ",style: kBodyText,),
                      GestureDetector(
                        child: Text(
                          "S'authentifier",
                          style: TextStyle(
                              color: kdeepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
  Widget headerSignup() => HeaderAuth(
    title: "Créer un compte",
    height: 250,
  );
  Widget emailField() => TextInputField(
    isPassword: false,
    icon: Icons.email,
    controller: emailController,
    hint: "Enter Email",
    inputType: TextInputType.emailAddress,

    inputAction: TextInputAction.done,
  );
  Widget phoneField() => TextInputField(
    isPassword: false,
    icon: Icons.phone,
    controller: emailController,
    hint: "Enter Phone Number",
    inputType: TextInputType.number,
    inputAction: TextInputAction.next,
  );
  Widget fullNameField() => TextInputField(
    isPassword: false,
    icon: Icons.person,
    controller: emailController,
    hint: "Enter Name",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
  Widget confPwdField() => TextInputField(
    icon: Icons.vpn_key,
    isPassword: true,
    controller: pwdController,
    hint: "Confirm Password",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
  Widget pwdField() => TextInputField(
    icon: Icons.vpn_key,
    isPassword: true,
    controller: pwdController,
    hint: "Enter Password",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
}