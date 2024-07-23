import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/tabs_widgets/details_tab_widget.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/open_builder_widgets/tabs_widgets/tasting_notes_tab_widget.dart';

class TabForDetails extends StatelessWidget {
  final BottleModel bottleModel;
  const TabForDetails({super.key,required this.bottleModel});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 40),
            Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                 borderRadius: BorderRadius.circular(8)
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(8)
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Theme.of(context).colorScheme.onSecondary,
                labelColor: Theme.of(context).colorScheme.surface,
                labelStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 12,
                ),
                tabs: const [
                Tab(text:'Details'),
                Tab(text:'Tasting'),
                Tab( text:'History'),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 100,
                maxHeight: 500,
              ),
              child: TabBarView(
                children: [
                  DetailsTabWidget(bottleModel: bottleModel),
                  TastingNotesTabWidget(bottleModel: bottleModel),
                  const  Text('something')
                ],
              ),
            ),
          ],
        )
    );
  }
}