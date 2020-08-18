import 'package:fisio_app/tiles/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

   final PageController pageController;

   CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 78, 210, 142),
            ),
            child: Text(
              'Avaliação\nNeurológica\nNeonatal\nde Hammersmith',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          DrawerTile(Icons.open_in_new, "Novo Teste"),
          DrawerTile(Icons.person, "Pacientes"),
          DrawerTile(Icons.equalizer, "Resultados"),
          DrawerTile(Icons.help_outline, "Ajuda"),
          DrawerTile(Icons.info, "Sobre")
        ],
      ),
    );
  }
}
