import 'package:fisio_app/data/result_data.dart';
import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/home_screen.dart';
import 'package:fisio_app/screens/result_screen.dart';
import 'package:fisio_app/screens/session_tb.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:flutter/material.dart';

class TbScreen extends StatefulWidget {
  final String sourceImage;
  final String descriptionText;
  final String alarm;
  final int value;

  TbScreen(this.sourceImage, this.descriptionText, this.alarm, this.value);

  @override
  _TbScreenState createState() =>
      _TbScreenState(sourceImage, descriptionText, alarm, value);
}

class _TbScreenState extends State<TbScreen> {
  final String sourceImage;
  final String descriptionText;
  final String alarm;
  final int value;
  String size;
  String right = "Direito";
  String lefth = "Esquerdo";

  _TbScreenState(
      this.sourceImage, this.descriptionText, this.alarm, this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.3,
            child: Image.asset(
              sourceImage,
              fit: BoxFit.contain,
            ),
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
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Membro",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 3,
                ),
                SizedBox(
                  height: 45.0,
                  child: GridView(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 0.5),
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            size = "Direito";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              border: Border.all(
                                  color: right == size ? Color.fromARGB(255, 189, 236, 182): Colors.grey[500],
                                  width: 1.5),),
                              width: 50.0,
                          alignment: Alignment.center,
                          child: Text(right),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            size = "Esquerdo";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(4.0)),
                              border: Border.all(
                                  color: lefth == size ? Color.fromARGB(255, 189, 236, 182): Colors.grey[500],
                                  width: 1.5)),
                          width: 50.0,
                          alignment: Alignment.center,
                          child: Text(lefth),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0,),
                SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    onPressed: size != null ? () {
                      Result result =
                          Result(value, descriptionText, size);

                      ResultModel.of(context).addTestItem(result);

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TestTab()));
                    }: null,
                    child: Text(
                      "Selecionar",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                      ),
                    ),
                    color: Color.fromARGB(255, 189, 236, 182),
                  ),
                ),
                SizedBox(
                  height: 16.00,
                ),
                Text(
                  alarm,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
