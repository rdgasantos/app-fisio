import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/result_screen.dart';
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
          SizedBox(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Expanded(
                child: Text(
                  "Sem tremor ou tremor só quando chora ou após o reflexo de Moro.", style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Sem tremor ou tremor só quando chora ou após o reflexo de Moro.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ResultScreen(0))
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 78, 210, 142),
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
                  "Tremor ocasionalmente quando acordado.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Tremor ocasionalmente quando acordado.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ResultScreen(0))
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 78, 210, 142),
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
                  "Tremores frequentes quando acordado.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(0, "Tremores frequentes quando acordado.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ResultScreen(0))
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 78, 210, 142),
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
                  "Tremor contínuo.",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  Result result = Result(1, "Tremor contínuo.", "");

                  ResultModel.of(context).addTestItem(result);

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>ResultScreen(1))
                  );
                },
                child: Text("Selecionar",  style: TextStyle(
                    fontSize: 15.0, color: Colors.white),
                ),
                color: Color.fromARGB(255, 78, 210, 142),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
