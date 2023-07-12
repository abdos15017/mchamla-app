import 'package:flutter/material.dart';
import 'package:first_app/utilities//constants.dart';
import '../widgets/text-field-input.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: kdeepOrange,
              ),
            ),
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        'Enter your email we will send instruction to reset your password',
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: Icons.email,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done,
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 45,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [kdeepOrange, new Color(0xffF2861E)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        ),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200],
                      ),
                      /*child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )*/
                      child: TextButton(
                        onPressed: () {
                          print('Clicked');
                        },
                        child: Text(
                          "Valider",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}