import 'package:first_app/ui/pages/forgot-password.dart';
import 'package:first_app/ui/pages/home.dart';
import 'package:first_app/ui/widgets/auth.header.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/sign-up.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../widgets/button.dart';
import '../widgets/text-field-input.dart';
import '../../utilities/constants.dart';

class LoginPage extends StatefulWidget {
  final bool isRider;
  LoginPage({Key? key, required this.isRider}) : super(key: key);
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() => setState(() {}));
  }

  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  String password = "";
  bool isPwdVisible = true;

  initWidget() {
    print(widget.isRider);
    if (widget.isRider) {
      return Scaffold(
          body: SingleChildScrollView(
              child: screenLoginRider())
      );
    }
    else{
      return Scaffold(
          body: SingleChildScrollView(
              child: screenLoginPassenger())
      );
    }

  }

  Widget screenLoginRider() => Column(
        children: [
          headerLogin(),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 54,
              child: buildEmail()),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),*/
            child: buildPwdWidget(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // Write Click Listener Code Here
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPassword(),
                    ));
              },
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  color: Color.fromARGB(255, 233, 78, 27),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    )*/
              child: Button(
                  name: 'Login',
                  onpressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  })),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have Any Account?  ",
                  style: kBodyText,
                ),
                GestureDetector(
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                        color: Color.fromARGB(255, 233, 78, 27),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  onTap: () {
                    // Write Tap Code Here.
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                  },
                )
              ],
            ),
          )
        ],
      );
  Widget screenLoginPassenger() => Column(
        children: [
          headerLogin(),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10, right: 10, top: 50),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            child: IntlPhoneField(
              decoration: InputDecoration(
                //border: InputBorder.none,
                enabledBorder: UnderlineInputBorder( //<-- SEE HERE
                  borderSide: BorderSide(
                      width: 3, color: kdeepOrange),
                ),
                focusColor: kdeepOrange,
                hintText: "Enter Phone Number",
                hintStyle: kBodyText,
              ),
              style: kBodyText,
              initialCountryCode: 'MR',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            child: Button(
                name: 'Login',
                onpressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                })),
          ),
        ],
      );
  Widget headerLogin() => HeaderAuth(
        title: "S'authentifier",
        height: 300,
      );

  Widget buildEmail() => TextInputField(
        isPassword: false,
        icon: Icons.email,
        controller: emailController,
        hint: "Enter Email",
        inputType: TextInputType.emailAddress,
        inputAction: TextInputAction.done,
      );
  Widget buildPwdWidget() => TextInputField(
        icon: Icons.vpn_key,
        isPassword: true,
        controller: pwdController,
        hint: "Enter Password",
        inputType: TextInputType.text,
        inputAction: TextInputAction.done,
      );
}
