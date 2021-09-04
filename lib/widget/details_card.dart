import 'package:flutter/material.dart';

import '../theme.dart';

class DetailsCard extends StatelessWidget {
  final String title;
  final String subTitle;

  DetailsCard({
    this.title,
    this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width - (2 * 16)) / 2) - 5.5,
      height: 176,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: paragraphOne.copyWith(
                color: inkOne,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              subTitle,
              style: paragraphTwo.copyWith(
                color: inkThree,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
