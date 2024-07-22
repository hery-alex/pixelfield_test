import 'package:flutter/material.dart';
import 'package:pixelfield_test/assets/assets_images.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/details_box.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/top_row_genuine.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/top_row_with_x.dart';

class BottleOpenWidget extends StatelessWidget {
  final BottleModel bottleModel;
  const BottleOpenWidget({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          image:DecorationImage(
          image: AssetsImagesPixelfield.layoutBackgroundImage,
          fit: BoxFit.cover,
         ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
               TopRowWithX(bottleModel:bottleModel),
               const SizedBox(height: 10),
               const TopRowGenuine(),
               const SizedBox(height: 10),
               Image(image: AssetsImagesPixelfield.bottleImage,height: 450),
               const SizedBox(height: 40),
               DetailsBox(bottleModel:bottleModel),
               const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}