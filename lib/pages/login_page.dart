import 'package:flutter/material.dart';
import 'package:healthcare/pages/home_page.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/text_field_and_label.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
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
                  'Welcome Back',
                  style: headingFive.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Login',
                  style: headingThree.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Image.asset(
                  'assets/illustration.png',
                  width: double.infinity,
                  height: 230,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldAndLabel(
                  placeholder: 'Email',
                  isPassword: false,
                ),
                SizedBox(
                  height: 16,
                ),
                TextFieldAndLabel(
                  placeholder: 'Password',
                  isPassword: true,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: paragraphTwo.copyWith(
                        color: primaryOne,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
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
                            return HomePage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Login',
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
                  height: 24,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Don’t have an account?  ',
                    style: paragraphTwo.copyWith(
                      color: primaryFour,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: paragraphTwo.copyWith(
                          color: primaryOne,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
