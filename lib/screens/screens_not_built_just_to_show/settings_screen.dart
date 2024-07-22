import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              text: 'SETTINGS SCREEN',
              style:Theme.of(context).textTheme.headlineLarge?.apply(
                  color: Theme.of(context).colorScheme.onPrimary,
              )
          )),
        ],
      ),
    );
  }
}