import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';

class NoConnectionPage extends StatelessWidget {
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
              Image.asset(
                'assets/illustration.png',
                width: double.infinity,
                height: 253,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Opps! No Internet Connection',
                style: headingFive.copyWith(
                  color: primaryOne,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Tap the screen to try again',
                style: paragraphOne.copyWith(
                  color: primaryFour,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
