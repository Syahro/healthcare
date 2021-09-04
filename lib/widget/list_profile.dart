import 'package:flutter/material.dart';

import '../theme.dart';

class ListProfile extends StatelessWidget {
  final IconData iconLeft;
  final String title;

  ListProfile({
    this.iconLeft,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          iconLeft,
          color: darkGreyColor,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: paragraphOne.copyWith(
            color: darkGreyColor,
          ),
        ),
        Spacer(),
        Icon(
          Icons.chevron_right,
          color: darkGreyColor,
        ),
      ],
    );
  }
}
