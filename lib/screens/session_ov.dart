import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/result_screen.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class SessionOv extends StatefulWidget {
  @override
  _SessionOvState createState() => _SessionOvState();
}

class _SessionOvState extends State<SessionOv> {
  String option, option2, option3, option4;
  String bola = "Bola";
  String tarj = "Tarjeta";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Orientação visual"),
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
                    "Não segue/segue brevemente para o lado, mas perde o foco",
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
                            option = bola;
                          });
                          Result result = Result(
                              1,
                              "Não segue/segue brevemente para o lado, mas perde o foco",
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
                              color: option == bola
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(bola),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option = tarj;
                          });
                          Result result = Result(
                              1,
                              "Não segue/segue brevemente para o lado, mas perde o foco",
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
                              color: option == tarj
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(tarj),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Divider(),
            //OPÇÃO 2
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Segue horizontal e verticalmente, não vira cabeça",
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
                            option2 = bola;
                          });
                          Result result = Result(
                              0,
                              "Segue horizontal e verticalmente, não vira cabeça",
                              option2);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => TestTab()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option2 == bola
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(bola),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option2 = tarj;
                          });
                          Result result = Result(
                              0,
                              "Segue horizontal e verticalmente, não vira cabeça",
                              option2);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => TestTab()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option2 == tarj
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(tarj),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Divider(),
            //OPÇÃO 3
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Segue horizontal e verticalmente, vira a cabeça",
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
                            option3 = bola;
                          });
                          Result result = Result(
                              0,
                              "Segue horizontal e verticalmente, vira a cabeça",
                              option3);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => TestTab()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option3 == bola
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(bola),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option3 = tarj;
                          });
                          Result result = Result(
                              0,
                              "Segue horizontal e verticalmente, vira a cabeça",
                              option3);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => TestTab()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option3 == tarj
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(tarj),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Divider(),
            //OPÇÃO 4
            Container(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Segue em círculo",
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
                            option4 = bola;
                          });
                          Result result = Result(
                              1,
                              "Segue em círculo",
                              option4);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => TestTab()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option4 == bola
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(bola),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            option4 = tarj;
                          });
                          Result result = Result(
                              0,
                              "Segue em círculo",
                              option4);
                          ResultModel.of(context).addTestItem(result);

                          Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => ResultScreen(1)));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(
                              color: option4 == tarj
                                  ? Color.fromARGB(255, 78, 210, 142)
                                  : Colors.grey[500],
                              width: 1.5,
                            ),
                          ),
                          width: 100.00,
                          height: 30.00,
                          alignment: Alignment.center,
                          child: Text(tarj),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
