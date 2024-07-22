import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

class TastingNotesTabWidget extends StatelessWidget {
  final BottleModel bottleModel;
  const TastingNotesTabWidget({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text.rich(
                TextSpan(
                  text: 'Tasting Notes',
                  style:Theme.of(context).textTheme.headlineSmall?.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                  )
              )),
           ],
         ),
         const SizedBox(height: 5),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text.rich(
                TextSpan(
                  text: 'By ${bottleModel.tastingNotes!.tastingPerson}',
                  style:Theme.of(context).textTheme.bodyMedium?.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                  )
              )),
           ],
         ),
       ],
     ),
    );
  }
}