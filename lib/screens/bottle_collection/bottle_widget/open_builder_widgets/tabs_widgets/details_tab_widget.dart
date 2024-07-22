import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

class DetailsTabWidget extends StatelessWidget {
  final BottleModel bottleModel;
  const DetailsTabWidget({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20),
      child:Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CreateRowWidgetForDetails(rowTitle: 'Distilery',rowValue: bottleModel.bottleDetails!.distilery),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Region',rowValue: bottleModel.bottleDetails!.region),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Country',rowValue: bottleModel.bottleDetails!.country),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Type',rowValue: bottleModel.bottleDetails!.type),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Age Statement',rowValue: bottleModel.bottleDetails!.ageStatement),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Filled',rowValue: bottleModel.bottleDetails!.filled),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Bottled',rowValue: bottleModel.bottleDetails!.bottled),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Cask Number',rowValue: bottleModel.bottleDetails!.caskNumber),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'AVB',rowValue: bottleModel.bottleDetails!.avb),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Size',rowValue: bottleModel.bottleDetails!.size),
        const SizedBox(height: 10),
        CreateRowWidgetForDetails(rowTitle: 'Finish',rowValue: bottleModel.bottleDetails!.finish),
       ],
     ),
    );
  }
}

class CreateRowWidgetForDetails extends StatelessWidget {
  final String? rowTitle;
  final String? rowValue;
  const CreateRowWidgetForDetails({super.key,required this.rowTitle,required this.rowValue});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text.rich(
                TextSpan(
                  text: rowTitle,
                  style:Theme.of(context).textTheme.bodyLarge?.apply(
                      color: Theme.of(context).colorScheme.onPrimary,
                  )
              )),
              Text.rich(
                TextSpan(
                  text: rowValue,
                  style:Theme.of(context).textTheme.bodyLarge?.apply(
                      color: Theme.of(context).colorScheme.onSecondary,
                  )
              )),
          ],
      );
  }
}