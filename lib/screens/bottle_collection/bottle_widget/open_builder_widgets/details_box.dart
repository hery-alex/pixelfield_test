import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/tab_for_details.dart';

class DetailsBox extends StatelessWidget {
  final BottleModel bottleModel;
  const DetailsBox({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! - 40,
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(
              text: bottleModel.bottleName,
              style:Theme.of(context).textTheme.headlineMedium?.apply(
                  color: Theme.of(context).colorScheme.onPrimary,
              )
          )),
          Text.rich(
            TextSpan(
              text: '# ${bottleModel.batchNo}',
              style:Theme.of(context).textTheme.headlineMedium?.apply(
                  color: Theme.of(context).colorScheme.onPrimary,
              )
          )),
          TabForDetails(bottleModel: bottleModel),
        ],
      ),
    );
  }
}