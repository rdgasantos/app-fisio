import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/result_screen.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class SessionSa extends StatefulWidget {
  @override
  _SessionSaState createState() => _SessionSaState();
}

class _SessionSaState extends State<SessionSa> {

  String option, option2, option3, option4, option5;
  String yes = "Sim";
  String no = "Não";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text("Sinais Anormais"),
        centerTitle: true,
    ),
    body: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Face paralisada",
                style: TextStyle(
                  fontSize: 18.00,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option = yes;
                      });
                      Result result = Result(
                          1,
                          "Face paralisada",
                          option);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option == yes
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(yes),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option = no;
                      });
                      Result result = Result(
                          0,
                          "Face paralisada",
                          option);
                      ResultModel.of(context).addTestItem(result);

                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option == no
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(no),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        // OPÇÃO 2
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Movimentos oculares normais",
                style: TextStyle(
                  fontSize: 18.00,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option2 = yes;
                      });
                      Result result = Result(
                          1,
                          "Movimentos oculares normais",
                          option2);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option2 == yes
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(yes),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option2 = no;
                      });
                      Result result = Result(
                          0,
                          "Movimentos oculares normais",
                          option2);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option2 == no
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(no),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        // OPÇÃO 3
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Sinal do sol poente",
                style: TextStyle(
                  fontSize: 18.00,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option3 = yes;
                      });
                      Result result = Result(
                          1,
                          "Sinal do sol poente",
                          option3);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option3 == yes
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(yes),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option3 = no;
                      });
                      Result result = Result(
                          0,
                          "Sinal do sol poente",
                          option3);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option3 == no
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(no),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        // OPÇÃO 4
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Mão(s) cerradas",
                style: TextStyle(
                  fontSize: 18.00,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option4 = yes;
                      });
                      Result result = Result(
                          1,
                          "Mão(s) cerradas",
                          option4);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option4 == yes
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(yes),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option4 = no;
                      });
                      Result result = Result(
                          0,
                          "Mão(s) cerradas",
                          option4);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option4 == no
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(no),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        // OPÇÃO 5
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Clônus",
                style: TextStyle(
                  fontSize: 18.00,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option5 = yes;
                      });
                      Result result = Result(
                          1,
                          "Clônus",
                          option5);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option5 == yes
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(yes),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        option5 = no;
                      });
                      Result result = Result(
                          0,
                          "Clônus",
                          option5);
                      ResultModel.of(context).addTestItem(result);

                      /*Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => TestTab()));*/
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(4.0)),
                        border: Border.all(
                          color: option5 == no
                              ? Color.fromARGB(255, 78, 210, 142)
                              : Colors.grey[500],
                          width: 1.5,
                        ),
                      ),
                      width: 60.00,
                      height: 30.00,
                      alignment: Alignment.center,
                      child: Text(no),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    ));
  }
}
