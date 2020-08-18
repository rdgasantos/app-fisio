import 'package:fisio_app/tabs/home_tab.dart';
import 'package:fisio_app/tabs/test_tab.dart';
import 'package:fisio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
            body: HomeTab(),
            drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Avaliação de Triagem"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: TestTab(),
        ),
      ],
    );
  }
}
