import 'package:flutter/material.dart';
import 'package:pixelfield_test/assets/assets_images.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

class BottleClosedWidget extends StatelessWidget {
  final BottleModel bottleModel;
  const BottleClosedWidget({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       color:Theme.of(context).colorScheme.primary,
      ),
      child: Column(
        children: [
           Container(
            height: 240,
            margin: const EdgeInsets.only(top: 20,bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetsImagesPixelfield.bottleImage,
                fit: BoxFit.contain
              )
            ),
          ),
          const SizedBox(height: 30),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left:10,right: 10),
                  child: Text.rich(
                    TextSpan(
                      text: bottleModel.bottleName,
                      style:Theme.of(context).textTheme.headlineSmall?.apply(
                          color: Theme.of(context).colorScheme.onPrimary,
                      )
                  )),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left:10,right: 10),
                child: Text.rich(
                  TextSpan(
                    text: '# ${bottleModel.batchNo}',
                    style:Theme.of(context).textTheme.bodyLarge?.apply(
                        color: Theme.of(context).colorScheme.onPrimary,
                    )
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}