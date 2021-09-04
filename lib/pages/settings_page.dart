import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/floating_menu.dart';
import 'package:healthcare/widget/list_profile.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingMenu(
        isHome: false,
        isChart: false,
        isNotif: false,
        isSetting: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: headingFour.copyWith(
                        color: inkOne,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 122,
                      height: 112,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/profile2.png',
                              width: 112,
                              height: 112,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: inkOne.withOpacity(0.1),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.edit,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Julia Mario',
                  style: headingFour.copyWith(
                    color: inkOne,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'juliamario@mail.com',
                  style: paragraphThree.copyWith(
                    color: darkGreyColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                ListProfile(
                  iconLeft: Icons.person,
                  title: 'Account',
                ),
                SizedBox(
                  height: 24,
                ),
                ListProfile(
                  iconLeft: Icons.notifications,
                  title: 'Notification',
                ),
                SizedBox(
                  height: 24,
                ),
                ListProfile(
                  iconLeft: Icons.visibility,
                  title: 'Appearance',
                ),
                SizedBox(
                  height: 24,
                ),
                ListProfile(
                  iconLeft: Icons.security,
                  title: 'Privacy & Security',
                ),
                SizedBox(
                  height: 24,
                ),
                ListProfile(
                  iconLeft: Icons.volume_up,
                  title: 'Sound',
                ),
                SizedBox(
                  height: 24,
                ),
                ListProfile(
                  iconLeft: Icons.public,
                  title: 'Language',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
