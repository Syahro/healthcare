import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/details_card.dart';
import 'package:healthcare/widget/home_cate_card.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: yellowColor,
        child: Icon(
          Icons.add,
          color: inkOne,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 42,
              bottom: 16,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                HomeCateCard(
                  title: 'Medical History',
                  imageUrl: 'assets/cate2.png',
                ),
              ],
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 210),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: inkSix,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailsCard(
                              title:
                                  'This is a very long title that breaks in three lines',
                              subTitle: 'Lorem ipsum dolor sit amet, ',
                            ),
                            DetailsCard(
                              title: 'Yesterday',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailsCard(
                              title: 'Wed, 7 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                            DetailsCard(
                              title: 'Thu, 8 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailsCard(
                              title: 'Fri, 9 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                            DetailsCard(
                              title: 'Sat, 10 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailsCard(
                              title: 'Sun, 11 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                            DetailsCard(
                              title: 'Mon, 12 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DetailsCard(
                              title: 'Tue, 13 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                            DetailsCard(
                              title: 'Wed, 14 Nov',
                              subTitle:
                                  'Lorem ipsum dolor sit amet, consectetur Lo...',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
