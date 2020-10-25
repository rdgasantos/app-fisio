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
        backgroundColor: Color.fromARGB(255, 189, 236, 182),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0, bottom: 20.00, left: 20.00, right: 20.00),
            child: Text("Avaliação neurológica de Hammersmith resumida para"
                " recém-nascidos a termo e prematuros com idade equivalente a termo",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20.00)),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.00),
            child: Container(
              height: 50.0,
              child: RaisedButton(
                elevation: 10.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TestTab()));
                },
                child: Text(
                  "Avaliação para triagem",
                  style: TextStyle(color: Colors.white, fontSize: 20.00),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
              height: 50.0,
              child: RaisedButton(
                elevation: 10.0,
                onPressed: () {},
                child: Text(
                  "HNNE",
                  style: TextStyle(color: Colors.white, fontSize: 20.00),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
              height: 50.0,
              child: RaisedButton(
                elevation: 10.0,
                onPressed: () {},
                child: Text(
                  "HINE",
                  style: TextStyle(color: Colors.white, fontSize: 20.00),
                ),
                color: Color.fromARGB(255, 189, 236, 182),
              ),
            ),
          )
        ],
      ),
      drawer: CustomDrawer(_pageController),
    );
  }
}
