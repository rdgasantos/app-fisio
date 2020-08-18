import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultTile extends StatelessWidget {

  final Result result;

  ResultTile(this.result);

  @override
  Widget build(BuildContext context) {

    Widget _buidContent(){
      return Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    result.descriptionText,
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        result.additional,
                        style: TextStyle(fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      FlatButton(
                        child: Text("Remover"),
                        textColor: Colors.grey[500],
                        onPressed: (){
                          ResultModel.of(context).removeTestItem(result);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: _buidContent(),
    );
  }
}
