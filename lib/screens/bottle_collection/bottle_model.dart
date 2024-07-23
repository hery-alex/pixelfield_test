
class BottleModel{

   String? bottleName;  
   int? batchNo;
   String? collection;
   BottleDetailsModel? bottleDetails;
   BottleTastingNotes? tastingNotes;
   BottleHistory?  history;


BottleModel({
  this.bottleName,
  this.batchNo,
  this.collection,
  this.bottleDetails,
  this.tastingNotes,
  this.history
});


 BottleModel.fromJson(Map<String,dynamic> json)
  : bottleName = json['bottleName'],
    batchNo = int.parse(json['batchNo']!),
    collection = json['collection'], 
    bottleDetails =  BottleDetailsModel.fromJson(json['details']!),
    tastingNotes = BottleTastingNotes.fromJson(json['tastingNotes']!),
    history = BottleHistory.fromJson(json['history']!);


   Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['bottleName'] = bottleName;
    data['batchNo'] = '$batchNo';
    data['collection'] = collection;
    data['details'] = bottleDetails?.toMap();
    data['tastingNotes'] = tastingNotes?.toMap();
    data['history'] = history?.toMap();
    return data;
   } 
}


class BottleHistory {
 
 List<BottleHistoryEvents>? historyEvents;

BottleHistory({this.historyEvents});

BottleHistory.fromJson(List<dynamic> json){
  List<BottleHistoryEvents> tempHistoryEvents= [];
  for(var singleHistory in json ){
         tempHistoryEvents.add(BottleHistoryEvents.fromJson(singleHistory));
    }
   historyEvents = tempHistoryEvents; 
}

List<Map<String,dynamic>> toMap(){
    final List<Map<String,dynamic>> data = [];
    for(var singleHistory in historyEvents as List<BottleHistoryEvents> ){
          data.add(singleHistory.toMap());
    }
    return data;
   }   


}

class BottleHistoryEvents{
  
  String? historyTitle;
  String? label;
  String? description;

  BottleHistoryEvents({
    this.historyTitle,
    this.label,
    this.description
  });


  BottleHistoryEvents.fromJson(Map<String,dynamic> json)
   : historyTitle = json['title'],
     label = json['label'],
     description = json['description'];

   Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['title'] = historyTitle;
    data['label'] = label;
    data['description'] = description;
    return data;
   }   


}


class BottleTastingNotes{
   
   String? tastingPerson;
   List<BottleTastingNotesDescription>? nose;
   List<BottleTastingNotesDescription>? palate;
   List<BottleTastingNotesDescription>? finish;
   
  BottleTastingNotes({
    this.tastingPerson,
    this.nose,
    this.palate,
    this.finish
  });


  BottleTastingNotes.fromJson(Map<String,dynamic> json)
   { 
    tastingPerson = json['tastingPerson'];
    List<BottleTastingNotesDescription> tempListNose = [];
    for(var singleNose in json['nose'] as List){
         tempListNose.add(BottleTastingNotesDescription.fromJson(singleNose));
    }
    nose = tempListNose;
    List<BottleTastingNotesDescription> tempListPalate = [];
    for(var singlePalate in json['palate'] as List){
         tempListPalate.add(BottleTastingNotesDescription.fromJson(singlePalate));
    }
    palate = tempListPalate;
    List<BottleTastingNotesDescription> tempListFinish = [];
    for(var singleFinish in json['finish'] as List){
         tempListFinish.add(BottleTastingNotesDescription.fromJson(singleFinish));
    }
    finish = tempListFinish;
  }

  Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['tastingPerson'] = tastingPerson;
    List<Map<String,dynamic>> tempListNose = [];
    for(var singleNose in nose as List<BottleTastingNotesDescription>){
         tempListNose.add(singleNose.toMap());
    }
    data['nose'] = tempListNose;
    List<Map<String,dynamic>> tempListPalate = [];
    for(var singlePalate in palate as List<BottleTastingNotesDescription>){
         tempListPalate.add(singlePalate.toMap());
    }
    data['palate'] = tempListPalate;
     List<Map<String,dynamic>> tempListFinish = [];
    for(var singleFinish in finish as List<BottleTastingNotesDescription>){
         tempListFinish.add(singleFinish.toMap());
    }
    data['finish'] = tempListFinish;

    return data;
   }
  
}

class BottleTastingNotesDescription{
   
  String? description;

   BottleTastingNotesDescription({
    this.description
   });

   BottleTastingNotesDescription.fromJson(Map<String,dynamic> json)
   : description = json['description'];

   Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['description'] = description;
    return data;
   } 
}



class BottleDetailsModel{
  
   String? distilery;
   String? region;
   String? country;
   String? type;
   String? ageStatement;
   String? filled;
   String? bottled;
   String? caskNumber;
   String? avb;
   String? size;
   String? finish;

   BottleDetailsModel({
     this.distilery,
     this.region,
     this.country,
     this.type,
     this.ageStatement,
     this.filled,
     this.bottled,
     this.caskNumber,
     this.avb,
     this.size,
     this.finish
   });

   BottleDetailsModel.fromJson(Map<String,dynamic> json)
    : distilery = json['distilery'],
      region = json['region'],
      country = json['country'],
      type = json['type'],
      ageStatement = json['ageStatement'],
      filled = json['filled'],
      bottled = json['bootled'],
      caskNumber = json['caskNumber'],
      avb = json['avb'],
      size = json['size'],
      finish = json['finish'];


   Map<String,dynamic> toMap(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['distilery'] = distilery;
    data['region'] = region;
    data['country'] = country;
    data['type'] = type;
    data['ageStatement'] = ageStatement;
    data['filled'] = filled;
    data['bootled'] = bottled;
    data['caskNumber'] = caskNumber;
    data['avb'] = avb;
    data['size'] = size;
    data['finish'] = finish;
    return data;
   }   


}