import 'package:flutter/material.dart';
import 'package:trivile_app/Screens/Filter_Screen.dart';
import 'package:trivile_app/adsManager.dart';

class App_Drawer extends StatelessWidget {
  const App_Drawer({super.key});

  ListTile bulid_List_Tile(IconData icon, String Tital, Function onClick) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.blue[300],
      ),
      title: Text(
        Tital,
        style: TextStyle(
            fontFamily: 'ElMessiri',
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      onTap: () => onClick(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          color: Theme.of(context).primaryColor,
          child: Text(
            "Tourist guide",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        bulid_List_Tile(Icons.card_travel, "Trip guide", () {
          showInterstitial();
          Navigator.of(context).pushReplacementNamed('/');
        }),
        SizedBox(
          height: 8,
        ),
        bulid_List_Tile(Icons.filter_list, 'filter', () {
          showInterstitial();
          Navigator.of(context)
              .pushReplacementNamed(Filter_Screen.Filter_ScreenLink);
        })
      ]),
    );
  }
}
