import 'package:trivile_app/Screens/Trips_Detels.dart';
import 'package:trivile_app/modiles/trip_modile.dart';
import 'package:trivile_app/widgat/trip_item.dart';

import '../data_app.dart';

import 'package:flutter/material.dart';

class categorysTrips_Screens extends StatefulWidget {
  static const LinkCategoty = "/category_Tips";
  List<Trip> avilabel;
  categorysTrips_Screens(this.avilabel);
  @override
  State<categorysTrips_Screens> createState() => _categorysTrips_ScreensState();
}

class _categorysTrips_ScreensState extends State<categorysTrips_Screens> {
  //  _categorysTrips_ScreensState({super.key});
  late String CategoryId;
  late List<Trip> displayTrips;
  void removeItam(String id) {
    setState(() {
      displayTrips.removeWhere((et) => et.id == id);
    });
  }

  @override
  void didChangeDependencies() {
    final GetDataArgemant =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final id = GetDataArgemant['id'];
    CategoryId = GetDataArgemant['Tital'].toString();

    displayTrips = widget.avilabel.where(
      (element) {
        return element.categories.contains(id);
      },
    ).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          CategoryId.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Trip_item_Card(
            id: displayTrips[index].id,
            tital: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            season: displayTrips[index].season,
            tripType: displayTrips[index].tripType,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
