import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

class Result {
  int value;
  String descriptionText;
  String additional;

  List resultList = [];

  Result(this.value, this.descriptionText, this.additional);

  /*void addTestItem() {
    Map<String, dynamic> newItem = Map();
    newItem["descriptionText"] = descriptionText;
    newItem["additional"] = additional;
    newItem["value"] = value;
    resultList.add(newItem);

  }*/

  void toMap(){

    Map<String, dynamic> newItem = Map();
    newItem["descriptionText"] = descriptionText;
    newItem["additional"] = additional;
    newItem["value"] = value;
    resultList.add(newItem);
    _saveData();

    /*return {
      "descriptionText": descriptionText,
      "additional": additional,
      "value": value
    };*/
  }

  void delete(){

  }

  Future<File> _getFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/data.json");
  }

  Future<File> _saveData() async {
    String data = json.encode(resultList);
    final file = await _getFile();
    return file.writeAsString(data);
  }

  Future<String> _readData() async {
    try {
      final file = await _getFile();

      return file.readAsString();
    }catch (e) {
      return null;
    }
  }

}