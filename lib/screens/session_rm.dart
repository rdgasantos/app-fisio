import 'package:fisio_app/screens/postura_screen.dart';
import 'package:flutter/material.dart';

class SessionRm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reflexo de moro"),
        centerTitle: true,
      ),
      body:GridView(
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
                  builder: (context) => PosturaScreen(
                      "images/cc9.JPG",
                      "Sem resposta ou apenas abre as mãos.",
                      "    ATENÇÃO: SINAL ALARMANTE",
                      "", 1)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/cc9.JPG",
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
                  builder: (context) => PosturaScreen(
                      "images/rf2.JPG",
                      "Abdução dos ombros completa e extensão dos braços; sem adução.",
                      "",
                      "", 0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/rf2.JPG",
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
                  builder: (context) => PosturaScreen(
                      "images/rf3.JPG",
                      "Abdução completa, mas apenas parcial ou deficiente adução.",
                      "",
                      "", 0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/rf3.JPG",
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
                  builder: (context) => PosturaScreen(
                      "images/rf4.JPG",
                      "Parcial abdução dos ombros e extensão dos braços seguida por adução lisa.",
                      "",
                      "", 0)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/rf4.JPG",
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
                  builder: (context) => PosturaScreen(
                      "images/rf5.JPG",
                      "-Mínima abdução ou adução;\n-Sem abdução ou adução; apenas extensão dos braços para cima\n-Marcada por adução, apenas.",
                      "    ATENÇÃO: SINAL ALARMANTE",
                      "", 1)));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      "images/rf5.JPG",
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
