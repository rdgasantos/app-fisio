import 'package:fisio_app/data/result_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class ResultModel extends Model {
  List<Result> results = [];

  static ResultModel of(BuildContext context) =>
      ScopedModel.of<ResultModel>(context);

  void addTestItem(Result result){
    results.add(result);
    result.toMap();
  }

  void removeTestItem(Result result){
    results.remove(result);
    result.delete();
    notifyListeners();
  }

  int alarmsItens(){
    int alarms = 0;
    for(Result r in results){
      if(r.value == 1){
        alarms+=1;
      }
    }
    return alarms;
  }

  int totalValues(){
    int values = 0;
    for(Result r in results){
      if(r.value == 0 || r.value == 1){
        values+=1;
      }

    }
    return values;
  }


}