import 'package:fisio_app/screens/tb_screen.dart';
import 'package:flutter/material.dart';

class SessionTb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tração de Braço"),
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
                      "images/tb1.JPG",
                      "Braço permanece esticado, resistência não é sentida.",
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
                      "images/tb1.JPG",
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
                      "images/tb2.JPG",
                      "Braço levemente fletido ou com alguma resistência sentida.",
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
                      "images/tb2.JPG",
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
                      "images/tb3.JPG",
                      "Braço bem fletido até elevação dos ombros, seguido por retificação do braço.",
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
                      "images/tb3.JPG",
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
                      "images/tb4.JPG",
                      "Braço com flexão aproximada de 100°, mantendo os ombros elevados.",
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
                      "images/tb4.JPG",
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
                      "images/tb5.JPG",
                      "Flexão do braço menor que 100°, mantendo o corpo elevado.",
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
                      "images/tb5.JPG",
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
