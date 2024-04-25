import 'package:flutter/material.dart';
import 'package:page2/Models/welcomemodel.dart';

class WelcomeText extends StatelessWidget {
  WelcomeText({super.key, required this.wlecomeModel});
  WelcomeModel wlecomeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: wlecomeModel.height,
      child: Text(
        wlecomeModel.text,
        style: TextStyle(
            fontSize: wlecomeModel.fontSize,
            fontFamily: wlecomeModel.fontFamily,
            color: wlecomeModel.color),
      ),
    );
  }
}
