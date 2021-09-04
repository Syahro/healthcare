import 'package:flutter/material.dart';
import 'package:healthcare/theme.dart';

class EmptyDetailsPage extends StatelessWidget {
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 42,
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(
                    'Medical History',
                    style: headingFour.copyWith(
                      color: inkOne,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 119,
          ),
          Image.asset(
            'assets/empty_illus.png',
            width: MediaQuery.of(context).size.width - (2 * 22),
            height: 270,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'You don’t have any records.',
            style: headingFive.copyWith(
              color: inkOne,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Click the plus button to add',
            style: paragraphOne.copyWith(
              color: inkFour,
            ),
          ),
        ],
      ),
    );
  }
}
