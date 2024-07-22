
class BottleModel{

   String? bottleName;  
   int? batchNo;
   BottleDetailsModel? bottleDetails;
   BottleTastingNotes? tastingNotes;
   BottleHistory?  history;


BottleModel({
  this.bottleName,
  this.batchNo,
  this.bottleDetails,
  this.tastingNotes,
  this.history
});


 BottleModel.fromJson(Map<String,dynamic> json)
  : bottleName = json['bottleName'],
    batchNo = int.parse(json['batchNo']!),
    bottleDetails =  BottleDetailsModel.fromJson(json['details']!),
    tastingNotes = BottleTastingNotes.fromJson(json['tastingNotes']!),
    history = BottleHistory.fromJson(json['history']!);
}


class BottleHistory {
 
 List<BottleHistoryEvents>? historyEvents;

BottleHistory({this.historyEvents});

BottleHistory.fromJson(List<dynamic> json){
  List<BottleHistoryEvents> tempHistoryEvents= [];
  for(var singleHistory in json ){
         tempHistoryEvents.add(BottleHistoryEvents.fromJson(singleHistory));
    }
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
}

class BottleTastingNotesDescription{
   
  String? description;

   BottleTastingNotesDescription({
    this.description
   });

   BottleTastingNotesDescription.fromJson(Map<String,dynamic> json)
   : description = json['description'];
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


}