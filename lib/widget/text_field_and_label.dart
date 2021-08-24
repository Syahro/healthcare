import 'package:flutter/material.dart';

import '../theme.dart';

class TextFieldAndLabel extends StatelessWidget {
  final String placeholder;
  final bool isPassword;

  TextFieldAndLabel({
    this.placeholder,
    this.isPassword,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: primarySix,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              placeholder,
              style: paragraphOne.copyWith(
                color: primaryThree,
              ),
            ),
            isPassword
                ? Icon(
                    Icons.visibility,
                    color: primaryFour,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
