import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/tiles/result_tile.dart';
import 'package:fisio_app/widgets/result_test.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ResultScreen extends StatelessWidget {

  final int value;

  ResultScreen(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 0.0),
            alignment: Alignment.center,
            child: ScopedModelDescendant<ResultModel>(
              builder: (context, child, model){
                int p = model.results.length;
                return Container(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                      "${p ?? 0}" "${p == 1 ? " ITEM": " ITENS"}"
                  ) ,
                );
              },
            ),
          ),
        ],
      ),
      body: ScopedModelDescendant<ResultModel>(
        builder: (context, child, model){
          if(model.results == null || model.results.length == 0){
            return Center(
              child: Text("Nenhum resultado disponível",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)
                , textAlign: TextAlign.center,),
            );
          } else {
            return ListView(
              children: <Widget>[
                ResultTest(value),
                Container(
                  padding: EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 0),
                  child: Text("ITENS SELECIONADOS", style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 17.0),
                    textAlign: TextAlign.center,),
                ),
                Column(
                  children: model.results.map(
                      (result){
                        return ResultTile(result);
                      }
                  ).toList(),
                ),
              ],
            );
          }
        }
      ),
    );
  }
}
