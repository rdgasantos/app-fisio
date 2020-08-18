import 'package:fisio_app/screens/tb_screen.dart';
import 'package:flutter/material.dart';

class SessionTp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tração de Perna"),
        centerTitle: true,
      ),
      body:  GridView(
        padding: EdgeInsets.all(4.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          childAspectRatio: 1.0,
        ),
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TbScreen(
                      "images/tp1.JPG",
                      "Perna retificada, sem resistência sentida.",
                      "    ATENÇÃO: SINAL ALARMANTE",
                      1)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/tp1.JPG",
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TbScreen(
                      "images/tp2.JPG",
                      "Perna lentamente fletida ou alguma resistência sentida.",
                      "",
                      0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/tp2.JPG",
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TbScreen(
                      "images/tp3.JPG",
                      "Perna bem fletida até elevação do quadril.",
                      "",
                      0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/tp3.JPG",
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TbScreen(
                      "images/tp4.JPG",
                      "Joelhos fletidos, permanecendo fletido quando o quadril é elevado.",
                      "",
                      0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/tp4.JPG",
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TbScreen(
                      "images/tp5.JPG",
                      "Sustentação da flexão no retorno e o quadril fica elevado.",
                      "    ATENÇÃO: SINAL ALARMANTE""",
                      1)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/tp5.JPG",
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
