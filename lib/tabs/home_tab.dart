import 'package:fisio_app/screens/home_screen.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:fisio_app/widgets/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 236, 182),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: 50.0, bottom: 40.00, left: 30.00, right: 30.00),
            child: Text("Avaliação neurológica de Hammersmith",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.00)),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.00),
            child: Container(
              height: 50.0,
              width: 265.00,
              child: RaisedButton(
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestTab()));
                },
                child: Text(
                  "TRIAGEM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.00,
                      fontWeight: FontWeight.w800),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      showDialog(context: context,
                      builder: (BuildContext){
                        return AlertDialog(
                          title: Text("Não disponível"),
                          content: Text("Funcionalidade em desenvolvimento"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("Fechar"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      });
                    },
                    child: Text(
                      "HNNE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.00,
                          fontWeight: FontWeight.w800),
                    ),
                    color: Color.fromARGB(255, 189, 236, 182),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () {
                      showDialog(context: context,
                          builder: (BuildContext){
                            return AlertDialog(
                              title: Text("Não disponível"),
                              content: Text("Funcionalidade em desenvolvimento"),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text("Fechar"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                    child: Text(
                      "HINE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.00,
                          fontWeight: FontWeight.w800),
                    ),
                    color: Color.fromARGB(255, 189, 236, 182),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(_pageController),
    );
  }
}
