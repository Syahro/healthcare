import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/floating_menu.dart';
import 'package:healthcare/widget/notif_list.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingMenu(
        isHome: false,
        isChart: false,
        isNotif: true,
        isSetting: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Notifications',
                      style: headingFour.copyWith(
                        color: inkOne,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                NotifList(
                  title: 'Notification Title',
                  subTitle:
                      'Lorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, ipsum dolor',
                  colorBullet: inkOne,
                ),
                SizedBox(
                  height: 16,
                ),
                NotifList(
                  title: 'Notification Title',
                  subTitle:
                      'Lorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, ipsum dolor',
                  colorBullet: yellowColor,
                ),
                SizedBox(
                  height: 16,
                ),
                NotifList(
                  title: 'Notification Title',
                  subTitle: 'Lorem ipsum dolor sit amet, consectetur',
                  colorBullet: blueColor,
                ),
                SizedBox(
                  height: 16,
                ),
                NotifList(
                  title: 'Notification Title',
                  subTitle:
                      'Lorem ipsum dolor sit amet, consectetur\nLorem ipsum dolor sit amet, ipsum dolor',
                  colorBullet: yellowColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
