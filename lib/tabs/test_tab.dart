import 'package:fisio_app/screens/session_cc1.dart';
import 'package:fisio_app/screens/session_cc2.dart';
import 'package:fisio_app/screens/session_me.dart';
import 'package:fisio_app/screens/session_ov.dart';
import 'package:fisio_app/screens/session_postura.dart';
import 'package:fisio_app/screens/session_rm.dart';
import 'package:fisio_app/screens/session_rt.dart';
import 'package:fisio_app/screens/session_sv.dart';
import 'package:fisio_app/screens/session_tb.dart';
import 'package:fisio_app/screens/session_tp.dart';
import 'package:fisio_app/screens/session_tr.dart';
import 'package:flutter/material.dart';

class TestTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 78, 210, 142),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Postura"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SessionPostura())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Tração de braço"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionTb())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Tração de perna"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionTp())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Controle de cabeça 1"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionCc1())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Controle de cabeça 2"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionCc2())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Resposta a tração"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionRt())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Suspensão ventral"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionSv())
              );

            },
          ),
          Divider(),
          ListTile(
            title: Text("Movimentos espontâneos"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionMe())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Tremor"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionTr())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Reflexo de Moro"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionRm())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Orientação visual"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SessionOv())
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text("Sinais anormais"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {

            },
          ),
        ],
      )
    );
  }
}
