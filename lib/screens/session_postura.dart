import 'package:fisio_app/screens/postura_screen.dart';
import 'package:flutter/material.dart';

class SessionPostura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Postura"),
          centerTitle: true,
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            GridView(
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
                            "images/POSTURA1.jpg",
                            "Braços e pernas estendidas ou levemente fletidas.",
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
                            "images/POSTURA1.jpg",
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
                            "images/postura2.JPG",
                            "Pernas levemente fletidas.",
                            "",
                            "Apenas para 25-27 semanas", 0)));
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.0,
                          child: Image.asset(
                            "images/postura2.JPG",
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
                            "images/postura3.JPG",
                            "Pernas bem fletidas, mas não aduzidas.",
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
                            "images/postura3.JPG",
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
                            "images/postura4.JPG",
                            "Pernas bem fletidas e aduzidas perto do abdome.",
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
                            "images/postura4.JPG",
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
                            "images/postura5.JPG",
                            "Postura anormal:\na) Opistótono\nb) Forte flexão dos braços e extensão das pernas",
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
                            "images/postura5.JPG",
                            fit: BoxFit.contain,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            /*ListView(
              padding: EdgeInsets.all(4.0),
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PosturaScreen(
                            "images/POSTURA1.jpg",
                            "Braços e pernas estendidas ou levemente fletidas.",
                            "    ATENÇÃO: SINAL ALARMANTE",
                            "", 1)));
                  },
                  child:Container(
                    padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                    height: 100.0,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Image.asset("images/POSTURA1.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "SINAL ALARMANTE", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PosturaScreen(

                            "images/postura2.JPG",
                            "Pernas levemente fletidas.",
                            "",
                            "Apenas para 25-27 semanas", 0)));
                  },
                  child:Container(
                    padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                    height: 100.0,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Image.asset("images/postura2.JPG",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),*/
          ],
        ),
      ),
    );
  }
}
