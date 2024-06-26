import 'package:flutter/material.dart';
import 'package:trivile_app/adsManager.dart';

import '../Screens/Fiveoret_screen.dart';
import '../Screens/categorys_Screens.dart';
import '../modiles/trip_modile.dart';
import '../widgat/app_drawr.dart';

class Tabsbar_Screen extends StatefulWidget {
  // const Tabsbar_Screen({super.key});
  List<Trip> _MyFivoret;
  Tabsbar_Screen(this._MyFivoret);

  @override
  State<Tabsbar_Screen> createState() => _Tabsbar_ScreenState();
}

class _Tabsbar_ScreenState extends State<Tabsbar_Screen> {
  int _Select_Screen_index = 0;
  void Select_Page(int index) {
    setState(() {
      showInterstitial();
      _Select_Screen_index = index;
    });
  }

  late List<Map<String, dynamic>> _Screens;

  @override
  void initState() {
    _Screens = [
      {'screen': Category_Screen(), 'tital': 'Tourist guide'},
      {'screen': Fiveoret_screen(widget._MyFivoret), 'tital': 'Favorite List'},
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _Screens[_Select_Screen_index]['tital'],
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: App_Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          onTap: Select_Page,
          currentIndex: _Select_Screen_index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
          ]),
      body: _Screens[_Select_Screen_index]['screen'],
    );
  }
}
