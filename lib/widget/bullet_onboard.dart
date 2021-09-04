import 'package:flutter/material.dart';

import '../theme.dart';

class BulletOnboard extends StatelessWidget {
  final bool isActive;

  BulletOnboard(this.isActive);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        color: isActive ? inkOne : greyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
