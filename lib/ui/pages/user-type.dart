import 'package:first_app/ui/pages/login.dart';
import 'package:first_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/button.dart';
//import 'verification_page/verification_page.dart';

class UserTypePage extends StatefulWidget {
  @override
  State<UserTypePage> createState() => _SelectPageState();
}

class _SelectPageState extends State<UserTypePage> {
  bool isclicked1 = false;
  bool isclicked2 = false;

  @override
  Widget build(BuildContext context) {
    double withdSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            const Center(
                child: Text(
                  'Choose the right user\n         type you\'re',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Joseph Sans'),
                )),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isclicked1 = true;
                      isclicked2 = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: (isclicked1)
                                ? kdeepOrange
                                : kdeepOrange.withOpacity(0.0),
                            width: 2.5),
                        color: (isclicked1)
                            ? Colors.white
                            : kdeepOrange.withOpacity(0.05),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    width: withdSize / 3,
                    height: heightSize / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        Image.asset('assets/img/driver-icon.png'),
                        const Spacer(
                          flex: 1,
                        ),
                        const Text(
                          'Driver',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0099A1)),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: (() => setState(() {
                    isclicked2 = true;
                    isclicked1 = false;
                  })),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: (isclicked2)
                                ? const Color(0xffEA2429)
                                : const Color(0xffEA2429).withOpacity(0.0),
                            width: 2.5),
                        color: (isclicked2)
                            ? Colors.white
                            : const Color(0xffEA2429).withOpacity(0.05),
                        borderRadius:
                        const BorderRadius.all(Radius.circular(20))),
                    width: withdSize / 3,
                    height: heightSize / 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 1,
                        ),
                        Image.asset('assets/img/rider-icon.png'),
                        const Spacer(
                          flex: 1,
                        ),
                        const Text(
                          'Passenger',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffEA2429)),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Button(
              name: 'Submit',
              onpressed: (() {
                if (isclicked1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(isRider: isclicked1,)),
                  );
                }
                else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(isRider: isclicked1,)),
                  );
                }
                // FirebaseAuth.instance.signOut();
              }),
            ),

            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}