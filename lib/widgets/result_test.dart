import 'package:fisio_app/models/result_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ResultTest extends StatelessWidget {
  final int value;
  int some = 0;

  ResultTest(this.value);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: ScopedModelDescendant<ResultModel>(
            builder: (context, child, model) {
          int alarms = model.alarmsItens();
          int totalValue = model.totalValues();

          if (alarms >= 0 && alarms < 2) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "RESULTADO",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Paciente sem alteração neurológica",
                  style: TextStyle(fontSize: 18.0, color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            );
          } else if (alarms >= 2) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "RESULTADO",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Paciente necessita de encaminhamento\npara avaliação neurológica",
                      style: TextStyle(fontSize: 17.0, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Sinais Alarmantes"),
                    Text("${alarms}"),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "RESULTADO",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Nenhum resultado disponível,finalize o teste",
                      style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
