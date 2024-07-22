import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixelfield_test/assets/assets_images.dart';
import 'package:pixelfield_test/config/size_config.dart';

class TopRowGenuine extends StatelessWidget {
  const TopRowGenuine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! - 40,
      height: 40,
      padding:const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetsImagesPixelfield.genuineBottle,width: 25,height: 25,),
              const SizedBox(width: 5),
              Text.rich(
                  TextSpan(
                    text: 'Genuine Bottle (Unopened)',
                    style:Theme.of(context).textTheme.bodyLarge?.apply(
                        color: Theme.of(context).colorScheme.onPrimary,
                    )
              )),
            ],
           ),
           FaIcon(
            FontAwesomeIcons.chevronDown,
            size: 16,
            color: Theme.of(context).colorScheme.primaryContainer,
           )
        ],
      ),
    );
  }
}