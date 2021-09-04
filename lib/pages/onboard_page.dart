import 'package:flutter/material.dart';
import 'package:healthcare/pages/splash_page.dart';
import 'package:healthcare/theme.dart';
import 'package:healthcare/widget/bullet_onboard.dart';

class OnboardPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool isFirst;
  final bool isSecond;
  final bool isLast;
  final String codeAct;

  OnboardPage({
    this.imageUrl,
    this.title,
    this.subTitle,
    this.isFirst,
    this.isSecond,
    this.isLast,
    this.codeAct,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: MediaQuery.of(context).size.width - (2 * 16),
            height: 350,
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BulletOnboard(isFirst),
              SizedBox(
                width: 6,
              ),
              BulletOnboard(isSecond),
              SizedBox(
                width: 6,
              ),
              BulletOnboard(isLast),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            title,
            style: headingThree.copyWith(
              color: inkOne,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            subTitle,
            style: paragraphOne.copyWith(
              color: darkGreyColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              (codeAct == "isFirst")
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnboardPage(
                            imageUrl: 'assets/caretaking.png',
                            title: 'Ask a Doctor Online',
                            subTitle:
                                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Phasellus lacinia libero ut metus\nconvallis tempor. Vestibulum consequat, tortor\nmattis consequat',
                            isFirst: false,
                            isSecond: true,
                            isLast: false,
                            codeAct: 'isSecond',
                          );
                        },
                      ),
                    )
                  : (codeAct == "isSecond")
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return OnboardPage(
                                imageUrl: 'assets/new_patient.png',
                                title: 'Get Expert Advice',
                                subTitle:
                                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Phasellus lacinia libero ut metus\nconvallis tempor. Vestibulum consequat, tortor\nmattis consequat',
                                isFirst: false,
                                isSecond: false,
                                isLast: true,
                                codeAct: 'isLast',
                              );
                            },
                          ),
                        )
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SplashPage();
                            },
                          ),
                        );
            },
            child: Text(
              'Skip Tour',
              style: buttonThree.copyWith(color: darkGreyColor),
            ),
          ),
        ],
      ),
    );
  }
}
