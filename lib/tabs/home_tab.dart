import 'package:fisio_app/screens/home_screen.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:fisio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 78, 210, 142),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60.0, bottom: 20.0),
            child: Text("Avaliação Neurológica Neonatal\nde\nHammersmith",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 40.00)),
          ),
          Container(
            padding: EdgeInsets.only(top: 80.0),
            child: Container(
              height: 50.0,
              child: RaisedButton(
                elevation: 10.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestTab()));
                },
                child: Text(
                  "Novo Teste",
                  style: TextStyle(color: Colors.white, fontSize: 25.00),
                ),
                color: Color.fromARGB(255, 78, 210, 142),
              ),
            ),
          )
        ],
      ),
      drawer: CustomDrawer(_pageController),
    );
  }
}
