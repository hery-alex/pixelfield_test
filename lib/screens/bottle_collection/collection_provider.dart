
import 'package:flutter/material.dart';
import 'package:pixelfield_test/screens/bottle_collection/collection_bloc.dart';



class CollectionProvider extends InheritedWidget{


  final CollectionBloc collectionBloc;

  CollectionProvider({super.key,Widget? child})
  : collectionBloc =  CollectionBloc(),
    super(child: child!);

  @override
  bool updateShouldNotify(CollectionProvider oldWidget){
    return true;
  }

  static CollectionProvider? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<CollectionProvider>();
  }
}