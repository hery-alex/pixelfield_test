import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';

class CollectionList extends StatelessWidget {
  const CollectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight! - 180,
      child: SizedBox(),
    );
  }
}