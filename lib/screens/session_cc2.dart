import 'package:fisio_app/screens/postura_screen.dart';
import 'package:flutter/material.dart';

class SessionCc2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controle de cabeça 2\n     (Tônus flexor)"),
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
                      "images/cc5.JPG",
                      "Sem esforço para levantar a cabeça.",
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
                      "images/cc5.JPG",
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
                      "images/cc6.JPG",
                      "Bebê tenta: esforço é melhor sentido que visualizado.",
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
                      "images/cc6.JPG",
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
                      "images/cc7.JPG",
                      "Levanta a cabeça mas cai para frente e para trás.",
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
                      "images/cc7.JPG",
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
                      "images/cc8.JPG",
                      "Levanta a cabeça: permanece na vertical; pode oscilar.",
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
                      "images/cc8.JPG",
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
                      "images/cc9.JPG",
                      "Cabeça na vertical ou estendida; não pode ser fletida passivamente.",
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
        ],
      ),
    );
  }
}

