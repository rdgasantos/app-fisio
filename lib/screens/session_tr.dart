import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class SessionTr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tremor"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          SizedBox(
            height: 16.0,
          ),
          //OPCAO 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Sem tremor ou tremor só quando chora ou após o reflexo de Moro.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              RaisedButton(
                  //padding: EdgeInsets.only(right: 10.0,),
                  color: Color.fromARGB(255, 189, 236, 182),
                  onPressed: () {
                    Result result = Result(
                        0,
                        "Sem tremor ou tremor só quando chora ou após o reflexo de Moro.",
                        "");

                    ResultModel.of(context).addTestItem(result);

                    /*Navigator.of(context).pop(
                        MaterialPageRoute(builder: (context) => TestTab()));*/
                  },
                  child: Text(
                    "Selecionar",
                    style: TextStyle(fontSize: 17.0, color: Colors.white),
                  )
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 16.0,
          ),
          //OPCAO 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Tremor ocasionalmente quando acordado.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Result result =
                      Result(0, "Tremor ocasionalmente quando acordado.", "");

                  ResultModel.of(context).addTestItem(result);

                  /*Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => TestTab()));*/
                },
                child: Text(
                  "Selecionar",
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Tremores frequentes quando acordado.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Result result =
                      Result(0, "Tremores frequentes quando acordado.", "");

                  ResultModel.of(context).addTestItem(result);

                  /*Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => TestTab()));*/
                },
                child: Text(
                  "Selecionar",
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Tremor contínuo.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Result result = Result(1, "Tremor contínuo.", "");

                  ResultModel.of(context).addTestItem(result);

                  /*Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => TestTab()));*/
                },
                child: Text(
                  "Selecionar",
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
