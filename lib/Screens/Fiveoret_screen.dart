import 'package:flutter/material.dart';
import 'package:trivile_app/widgat/trip_item.dart';
import '../data_app.dart';
import '../modiles/trip_modile.dart';

class Fiveoret_screen extends StatelessWidget {
  // const Fiveoret_screen({super.key});
  List<Trip> _MyFivoret;

  Fiveoret_screen(this._MyFivoret);
  @override
  Widget build(BuildContext context) {
    if (_MyFivoret.isEmpty) {
      return Center(
        child: Text("You don't have any favourites."),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return Trip_item_Card(
              tital: _MyFivoret[index].title,
              id: _MyFivoret[index].id,
              imageUrl: _MyFivoret[index].imageUrl,
              duration: _MyFivoret[index].duration,
              season: _MyFivoret[index].season,
              tripType: _MyFivoret[index].tripType);
        },
        itemCount: _MyFivoret.length,
      );
    }
  }
}
