import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:pixelfield_test/config/size_config.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_widget/bottle_closed_builder.dart';
import 'package:pixelfield_test/screens/bottle_collection/collection_provider.dart';

class CollectionList extends StatelessWidget {
  const CollectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 16),
      width: SizeConfig.screenWidth,
      child: StreamBuilder<Object>(
        stream: CollectionProvider.of(context)!.collectionBloc.collection,
        builder: (context, AsyncSnapshot collectionBottles) {
          if(!collectionBottles.hasData){
            return const CircularProgressIndicator();
          }
          return GridView.builder(
            itemCount: collectionBottles.data.length,
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2/4
              ), 
            itemBuilder: (context,int index){
               
               return OpenContainer(
                        closedColor: Colors.transparent,
                        openColor: Colors.transparent,
                        transitionType: ContainerTransitionType.fade,
                        transitionDuration:const Duration(seconds: 1),
                        closedElevation: 0,
                        closedBuilder: (context, action) {
                          return BottleClosedWidget(bottleModel: collectionBottles.data[index],);
                        },
                        openBuilder: (context,action){
                            return  SizedBox();
                        }
                      );
          
            });
        }
      ),
    );
  }
}