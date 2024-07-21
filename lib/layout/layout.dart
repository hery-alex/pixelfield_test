import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelfield_test/assets/assets_images.dart';
import 'package:pixelfield_test/config/size_config.dart';

class LayoutForBackground extends StatelessWidget {
  final Widget child;
  final bool showBackButton;
  final bool showBackgroundImage;
  const LayoutForBackground({super.key,required this.child,required this.showBackButton,required this.showBackgroundImage});

  @override
  Widget build(BuildContext context) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
    value:  SystemUiOverlayStyle(
      statusBarColor:  Theme.of(context).colorScheme.surface,
    ),
    child: SafeArea(
      child: Scaffold(
      appBar:showBackButton ? AppBar(
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          leading:  IconButton(
            color: Colors.white,
            icon:const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ) ,
        ): null,
        body:SafeArea(
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            decoration: BoxDecoration(
              color:showBackgroundImage ? Theme.of(context).colorScheme.surface : Theme.of(context).colorScheme.onSurface,
              image:showBackgroundImage ? DecorationImage(
                image: AssetsImagesPixelfield.layoutBackgroundImage,
                fit: BoxFit.cover,
              ) : null,
            ),
            child: child,
          ),
        ),
       ),
    ),
    );
  }
}