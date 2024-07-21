import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/layout/layout.dart';
import 'package:pixelfield_test/screens/welcome/welcome_box.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutForBackground(
      showBackButton: false,
      showBackgroundImage: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         const WelcomeBox(),
          SizedBox(
            height: SizeConfig.safeBlockVertical! * 3,
          )
        ],
      ),
    );
  }
}