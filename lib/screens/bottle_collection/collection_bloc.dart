
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pixelfield_test/repository/json_repository.dart';
import 'package:pixelfield_test/screens/bottle_collection/bottle_model.dart';
import 'package:rxdart/rxdart.dart';

class CollectionBloc{

  CollectionBloc(){
    getCollectionData();
  }


final _collectionController = BehaviorSubject<List<BottleModel>>();
final Repository repository = JsonRepository();

Stream<List<BottleModel>> get collection => _collectionController.stream;



getCollectionData() async{
  final Connectivity connectivity = Connectivity();
  List<ConnectivityResult> result = await connectivity.checkConnectivity();
  if(result.contains(ConnectivityResult.mobile) || result.contains(ConnectivityResult.wifi)){
    List<BottleModel> resultList = await repository.getDataFromApi();
    _collectionController.sink.add(resultList);
  }else if(result.contains(ConnectivityResult.none)){
       List<BottleModel> resultListLocal = await repository.getDataFromLocalStorage();
        _collectionController.sink.add(resultListLocal);
  }

  connectivity.onConnectivityChanged.listen((List<ConnectivityResult> data) async{
    if(data.contains(ConnectivityResult.mobile) || data.contains(ConnectivityResult.wifi)){
        List<BottleModel> resultListApi = await repository.getDataFromApi();
       _collectionController.sink.add(resultListApi);
    }else if(data.contains(ConnectivityResult.none)){
       List<BottleModel> resultListLocal = await repository.getDataFromLocalStorage();
        _collectionController.sink.add(resultListLocal);
    }
  });
  
}

 

 dispose(){
  _collectionController.close();
 }
}