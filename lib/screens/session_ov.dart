import 'package:flutter/material.dart';

class SessionOv extends StatefulWidget {
  @override
  _SessionOvState createState() => _SessionOvState();
}

class _SessionOvState extends State<SessionOv> {
  String option;
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
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Apenas extensão",
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    option = "Bola";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    border: Border.all(
                        color: bola == option
                            ? Color.fromARGB(255, 78, 210, 142)
                            : Colors.grey[500],
                        width: 1.5),
                  ),
                  width: 50.0,
                  alignment: Alignment.center,
                  child: Text(bola),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    option = "Tarjeta";
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    border: Border.all(
                        color: tarj == option
                            ? Color.fromARGB(255, 78, 210, 142)
                            : Colors.grey[500],
                        width: 1.5),
                  ),
                  width: 50.0,
                  alignment: Alignment.center,
                  child: Text(tarj),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
