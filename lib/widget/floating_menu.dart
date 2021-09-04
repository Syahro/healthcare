import 'package:flutter/material.dart';
import 'package:healthcare/pages/home_page.dart';
import 'package:healthcare/pages/settings_page.dart';
import 'package:healthcare/theme.dart';

class FloatingMenu extends StatelessWidget {
  final bool isHome;
  final bool isChart;
  final bool isNotif;
  final bool isSetting;

  FloatingMenu({
    this.isHome,
    this.isChart,
    this.isNotif,
    this.isSetting,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: inkOne.withOpacity(0.1),
            blurRadius: 2,
            spreadRadius: 2,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Image.asset(
                'assets/home.png',
                width: 24,
                height: 24,
                color: isHome ? inkOne : inkFour.withOpacity(0.7),
              ),
            ),
            Image.asset(
              'assets/chart.png',
              width: 24,
              height: 24,
              color: isChart ? inkOne : inkFour.withOpacity(0.7),
            ),
            Image.asset(
              'assets/notif.png',
              width: 24,
              height: 24,
              color: isNotif ? inkOne : inkFour.withOpacity(0.7),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingsPage();
                    },
                  ),
                );
              },
              child: Image.asset(
                'assets/setting.png',
                width: 24,
                height: 24,
                color: isSetting ? inkOne : inkFour.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
