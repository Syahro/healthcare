import 'package:flutter/material.dart';
import 'package:healthcare/pages/details_page.dart';
import 'package:healthcare/pages/empty_details_page.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/home_cate_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '👋🏻 Hi Julia!',
                      style: headingFour.copyWith(
                        color: inkOne,
                      ),
                    ),
                    Image.asset(
                      'assets/profile.png',
                      width: 46,
                      height: 46,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                HomeCateCard(
                  title: 'Your Diet Chart',
                  imageUrl: 'assets/cate1.png',
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EmptyDetailsPage();
                        },
                      ),
                    );
                  },
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsPage();
                        },
                      ),
                    );
                  },
                  child: HomeCateCard(
                    title: 'Medical History',
                    imageUrl: 'assets/cate2.png',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                HomeCateCard(
                  title: 'Lab Results',
                  imageUrl: 'assets/cate3.png',
                ),
                SizedBox(
                  height: 16,
                ),
                HomeCateCard(
                  title: 'Online Chat',
                  imageUrl: 'assets/cate4.png',
                ),
                SizedBox(
                  height: 16,
                ),
                HomeCateCard(
                  title: 'Finding yourself',
                  imageUrl: 'assets/cate5.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
