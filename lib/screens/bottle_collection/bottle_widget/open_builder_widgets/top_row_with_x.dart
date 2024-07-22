import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

class TopRowWithX extends StatelessWidget {
  final BottleModel bottleModel;
  const TopRowWithX({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding:const EdgeInsets.all(20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                  child: Text.rich(
                      TextSpan(
                        text: '${bottleModel.collection}',
                        style:Theme.of(context).textTheme.bodyMedium?.apply(
                            color: Theme.of(context).colorScheme.onPrimary,
                        )
                  )),
                ),
                InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                  child: Container(
                  width: 35,
                  height: 35,
                  margin:const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  Theme.of(context).colorScheme.surface,
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.x,
                      size: 16,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              )
            ],
          ),
       );
     }
}