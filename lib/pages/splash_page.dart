import 'package:flutter/material.dart';
import 'package:healthcare/pages/login_page.dart';
import 'package:healthcare/pages/no_connection_page.dart';
import 'package:healthcare/pages/signup_page.dart';
import 'package:healthcare/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to',
                  style: headingFive.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Self Care',
                  style: headingThree.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/illustration.png',
                  width: double.infinity,
                  height: 320,
                ),
                SizedBox(
                  height: 46,
                ),
                Container(
                  height: 42,
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupPage();
                          },
                        ),
                      );
                    },
                    onLongPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NoConnectionPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: buttonTwo.copyWith(
                        color: whiteColor,
                      ),
                    ),
                    color: primaryOne,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 42,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: primaryOne,
                    ),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: buttonTwo.copyWith(
                        color: primaryOne,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
