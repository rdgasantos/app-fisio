import 'package:fisio_app/models/result_model.dart';
import 'package:fisio_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'data/result_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ResultModel>(
      model: ResultModel(),
      child: MaterialApp(
        title: 'Teste Hammersmith',
        theme: ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color.fromARGB(255, 189, 236, 182),
        ),
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
