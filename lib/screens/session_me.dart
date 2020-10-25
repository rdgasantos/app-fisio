import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/result_screen.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class SessionMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movimentos espontâneos\n         (qualitativo)"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  "Apenas extensão", style: TextStyle(fontSize: 18),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(1, "Apenas extensão", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context)=>TestTab())
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Extensões e movimentos abruptos ao acaso; alguns movimentos lisos.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Extensões e movimentos abruptos ao acaso; alguns movimentos lisos", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context)=>TestTab())
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Movimentos fluente, mas monótonos.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Movimentos fluente, mas monótonos.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context)=>TestTab())
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "Movimentos fluentes alternados em braços e pernas; boa variabilidade.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Movimentos fluentes alternados em braços e pernas; boa variabilidade.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context)=>TestTab())
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  "- Restrito, sincronizado\n- Boca\n- Trancos ou outro movimento anormal.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(1, "- Restrito, sincronizado\n- Boca\n- Trancos ou outro movimento anormal.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context)=>TestTab())
                      );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
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
