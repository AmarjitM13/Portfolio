import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme_switcher.dart';
import 'package:portfolio/utilities/constants.dart';

class IntroductionMobile extends StatefulWidget {
  @override
  _IntroductionMobileState createState() => _IntroductionMobileState();
}

class _IntroductionMobileState extends State<IntroductionMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(vertical: 70, horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'a little about me ',
            style: TextStyle(
              color: ThemeSwitcher.of(context).isDarkModeOn ? Colors.white : Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono',
            ),
          ),
          Expanded(
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "I've been sailing the app development seas more than 2 years. "
                      "I've been creating everything from regular apps and dashboards,"
                      " all the way to complex mobile applications."
                      "\n\nThe main characteristic of my work one could give for all these years has been simple:\n\n",
                  style: TextStyle(
                    color: ThemeSwitcher.of(context).isDarkModeOn ? Colors.white : Colors.black,
                    fontFamily: 'RobotoMono',
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "Get things done. Fast!!!!!",
                      style: TextStyle(
                          color: ThemeSwitcher.of(context).isDarkModeOn ? Color(0xFF00D1C7) : Color(0xFF646AFF),
                          fontFamily: 'RobotoMono',
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text:
                            "\n\nI write clean and modern Dart code with a rigid code-style, and I do it really fast. "),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
