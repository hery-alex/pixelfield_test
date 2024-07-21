import 'package:flutter/material.dart';
import 'package:pixelfield_test/layout/layout.dart';

class MyCollectionMainScreen extends StatelessWidget {
  const MyCollectionMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutForBackground(
      child: Text('here'), 
      showBackButton: false, 
      showBackgroundImage: false);
  }
}