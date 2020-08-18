import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/result_screen.dart';
import 'package:flutter/material.dart';
class PosturaScreen extends StatefulWidget {

  final String sourceImage;
  final String descriptionText;
  final String alarm;
  final String info;
  final int value;

  PosturaScreen(this.sourceImage, this.descriptionText, this.alarm, this.info, this.value);

  @override
  _PosturaScreenState createState() => _PosturaScreenState(sourceImage, descriptionText, alarm, info, value);
}

class _PosturaScreenState extends State<PosturaScreen> {

  final String sourceImage;
  final String descriptionText;
  final String alarm;
  final String info;
  final int value;
  String additional = "Direita";

  _PosturaScreenState(this.sourceImage, this.descriptionText, this.alarm, this.info, this.value);

  /*void exibir(){
    debugPrint("Funcionando!");
    debugPrint("id = (${id})");
    setState(() {
      if(id == 1){
        String sourceImage = "images/POSTURA1.jpg";
        String descriptionText = "Braços e pernas estendidas ou levemente fletidas";
        String alarm = "SINAL ALARMANTE";
        String info = "";
        debugPrint(sourceImage);
      }else if(id == 2){
        String sourceImage = "images/postura2.JPG";
        String descriptionText = "Pernas levemente fletidas";
        String alarm = "";
        String info = "Apenas para 25-27 semanas";
        debugPrint(sourceImage);

      }else if(id == 3){
        String sourceImage = "images/postura3.JPG";
        String descriptionText = "Pernas bem fletidas, mas não aduzidas";
        String alarm = "";
        String info = "";
        debugPrint(sourceImage);

      }else if(id == 4){
        String sourceImage = "images/postura4.JPG";
        String descriptionText = "Pernas bem fletidas e aduzidas perto do abdome";
        String alarm = "";
        String info = "";
        debugPrint(sourceImage);

      }else{
        String sourceImage = "images/postura5.JPG";
        String descriptionText = "Postura anormal: a) Opistótono b) Forte flexão dos braços, e extensão das pernas";
        String alarm = "SINAL ALARMANTE";
        String info = "";
        debugPrint(sourceImage);

      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    exibir();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postura"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.3,
            child: Image.asset(sourceImage, fit: BoxFit.none,),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  descriptionText,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
                SizedBox(height: 16.0,),
                Text(
                  info,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 16.00,),
                SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    onPressed: () {

                      Result result = Result(value, descriptionText, additional);

                      ResultModel.of(context).addTestItem(result);

                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>ResultScreen(value))
                      );
                    },
                    child: Text("Selecionar",
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    color: Color.fromARGB(255, 78, 210, 142),
                  ),
                ),
                SizedBox(height: 16.00,),
                Text(
                  alarm,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.red
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
