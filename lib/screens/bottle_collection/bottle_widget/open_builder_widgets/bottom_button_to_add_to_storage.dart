import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/repository/json_repository.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

class BottomButtonToAddToStorage extends StatelessWidget {
  final BottleModel bottleModel;
  const BottomButtonToAddToStorage({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()async {
      Repository repository = JsonRepository();
       
       await repository.addDataToLocalStorage(bottleModel);
       
      },
      child: Container(
        width: SizeConfig.screenWidth! - 100,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.plus,
              size: 20,
              color: Theme.of(context).colorScheme.surface,
            ),
            const SizedBox(width: 10),
            Text.rich(
              TextSpan(
                text: 'Add to my collection',
                style:Theme.of(context).textTheme.headlineSmall?.apply(
                    color: Theme.of(context).colorScheme.surface,
                )
            )),
          ],
        ),
      ),
    );
  }
}