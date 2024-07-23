import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';

abstract class  Repository{
 
 Future<List<BottleModel>> getDataFromApi();
 Future<List<BottleModel>> getDataFromLocalStorage();
 Future<bool> addDataToLocalStorage(BottleModel bottleModel);

}



class JsonRepository extends Repository{
  @override
  Future<List<BottleModel>> getDataFromApi() async{
    final String response = await rootBundle.loadString('assets/jsonData/jsonDataCollectionBottles.json');
    final data = await json.decode(response);
    List<BottleModel> tempBottleList = [];
      for(var singleData in data['bottles']){
          tempBottleList.add(BottleModel.fromJson(singleData));
      }
      return tempBottleList;
  }

  
  
  @override
  Future<bool> addDataToLocalStorage(BottleModel bottleModel) async{
     await initLocalStorage();

     var temp = localStorage.getItem('collectionList') ?? '';

    if(temp.isNotEmpty){

            List<dynamic> itemsToStorage = json.decode(localStorage.getItem('collectionList')!);

            List<BottleModel> storedItems = [];
            for(var item in itemsToStorage){
                BottleModel model = BottleModel.fromJson(json.decode(item));
                storedItems.add(model);
            }
           BottleModel? model =   storedItems.firstWhere((element)=> element.batchNo == bottleModel.batchNo && element.bottleName == bottleModel.bottleName ,orElse: () => BottleModel());
            if(model.bottleName == null && model.batchNo == null ){
                  itemsToStorage.add(json.encode(bottleModel.toMap()));
                  localStorage.setItem('collectionList', json.encode(itemsToStorage) );
                  return true;
            }else{
                  return false;
            }
    }else{
       List<String> itemsToStorage = [];
       itemsToStorage.add(json.encode(bottleModel.toMap()));
       localStorage.setItem('collectionList', json.encode(itemsToStorage) );
       return true;
    }  
  }
  
  @override
  Future<List<BottleModel>> getDataFromLocalStorage()async {
    await initLocalStorage();

     var temp = localStorage.getItem('collectionList') ?? '';

    if(temp.isNotEmpty){

        List<dynamic> itemsToStorage = json.decode(localStorage.getItem('collectionList')!);

        List<BottleModel> storedItems = [];
        for(var item in itemsToStorage){
            BottleModel model = BottleModel.fromJson(json.decode(item));
            storedItems.add(model);
        }

        return storedItems;
    }else{
      return [BottleModel()];
    }
  }


}