import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/collection_list.dart';
import 'package:pixelfield_test/screens/bottle_collection/collection_top_bar.dart';

class MyCollectionMainScreen extends StatelessWidget {
  const MyCollectionMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return  SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CollectionTopBar(),
          Expanded(child: CollectionList()),
        ],
      ),
    );
  }
}