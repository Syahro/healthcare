import 'package:flutter/material.dart';

import '../theme.dart';

class HomeCateCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  HomeCateCard({
    this.title,
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 116,
      decoration: BoxDecoration(
        color: inkSix,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: headingFive.copyWith(
                color: inkOne,
              ),
            ),
            Image.asset(
              imageUrl,
              width: 152,
              height: 116,
            ),
          ],
        ),
      ),
    );
  }
}
