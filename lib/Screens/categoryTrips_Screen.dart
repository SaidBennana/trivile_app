import 'package:trivile_app/widgat/trip_item.dart';

import '../data_app.dart';

import 'package:flutter/material.dart';

class categorysTrips_Screens extends StatelessWidget {
  static const LinkCategoty = "/category_Tips";
  //const categorysTrips_Screens({super.key});

  @override
  Widget build(BuildContext context) {
    final GetDataArgemant =ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final id = GetDataArgemant['id'];
    final Tital = GetDataArgemant['Tital'];

    final FilterTrip = Trips_data.where(
      (element) {
        return element.categories.contains(id);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(Tital.toString(),
        style: Theme.of(context).textTheme.headline5,
        ),
        
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Trip_item_Card(
              tital: FilterTrip[index].title,
              imageUrl: FilterTrip[index].imageUrl,
              duration: FilterTrip[index].duration,
              season: FilterTrip[index].season,
              tripType: FilterTrip[index].tripType);
        },
        itemCount: FilterTrip.length,
      ),
    );
  }
}
