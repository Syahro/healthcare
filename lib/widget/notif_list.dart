import 'package:flutter/material.dart';

import '../theme.dart';

class NotifList extends StatelessWidget {
  final Color colorBullet;
  final String title;
  final String subTitle;

  NotifList({
    this.colorBullet,
    this.title,
    this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: greyColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 10,
              height: 10,
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                color: colorBullet,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: paragraphOne.copyWith(
                    color: inkOne,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  subTitle,
                  style: paragraphThree.copyWith(
                    color: darkGreyColor,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
