import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';
import 'package:rxdart/rxdart.dart';

class CollectionBloc{

  CollectionBloc(){
    getCollectionData();
  }


final _collectionController = BehaviorSubject<List<BottleModel>>();


Stream<List<BottleModel>> get collection => _collectionController.stream;


getCollectionData() async{
  log('got here');
final String response = await rootBundle.loadString('assets/jsonData/jsonDataCollectionBottles.json');
final data = await json.decode(response);
List<BottleModel> tempBottleList = [];
  for(var singleData in data['bottles']){
      tempBottleList.add(BottleModel.fromJson(singleData));
  }
  log('data collection $tempBottleList');
  _collectionController.sink.add(tempBottleList);
}

 

 dispose(){
  _collectionController.close();
 }
}