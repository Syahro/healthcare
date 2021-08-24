import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/text_field_and_label.dart';

class SignupPage extends StatelessWidget {
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
                  'Hello Beautiful',
                  style: headingFive.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Sign Up',
                  style: headingThree.copyWith(
                    color: primaryOne,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Image.asset(
                  'assets/illustration.png',
                  width: double.infinity,
                  height: 210,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldAndLabel(
                  placeholder: 'Full Name',
                  isPassword: false,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldAndLabel(
                  placeholder: 'Email',
                  isPassword: false,
                ),
                SizedBox(
                  height: 10,
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
                    onPressed: () {},
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
                  height: 24,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Already have an account?  ',
                    style: paragraphTwo.copyWith(
                      color: primaryFour,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: paragraphTwo.copyWith(
                          color: primaryOne,
                        ),
                      )
                    ],
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
