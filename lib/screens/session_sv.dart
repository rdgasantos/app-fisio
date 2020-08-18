import 'package:fisio_app/screens/postura_screen.dart';
import 'package:flutter/material.dart';

class SessionSv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suspensão ventral"),
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
                      "images/sv1.JPG",
                      "Costas curvada, cabeça e membros pendurados retos.",
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
                      "images/sv1.JPG",
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
                      "images/sv2.JPG",
                      "Costas curvada, cabeça para baixo, membros levemente fletidos.",
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
                      "images/sv2.JPG",
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
                      "images/sv3.JPG",
                      "Costas levemente curvada, membros fletidos.",
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
                      "images/sv3.JPG",
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
                      "images/sv4.JPG",
                      "Costas reta, cabeça alinhada com tronco, membros fletidos.",
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
                      "images/sv4.JPG",
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
                      "images/sv5.JPG",
                      "Costas reta, cabeça acima do tronco.",
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
                      "images/sv5.JPG",
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
