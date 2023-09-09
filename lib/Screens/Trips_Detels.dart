import 'package:flutter/material.dart';
import 'package:trivile_app/modiles/trip_modile.dart';
import '../data_app.dart';

class Trips_Detals extends StatelessWidget {
  static const PageLink = '/trip_Detals';
  Function Add_fivoret;
  Function Is_fivoret;

  Trips_Detals(this.Add_fivoret, this.Is_fivoret);
  Widget MainTital(BuildContext ctx, String tital) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Text(
        tital,
        style: Theme.of(ctx).textTheme.headline4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data_From_Trip_ID =
        ModalRoute.of(context)!.settings.arguments as String;
    final trips = Trips_data.firstWhere((e) => e.id == data_From_Trip_ID);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          trips.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                height: 300,
                trips.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            MainTital(context, 'الانشطة'),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: Text(trips.activities[index]),
                  elevation: 1,
                ),
                itemCount: trips.activities.length,
              ),
            ),
            MainTital(context, 'البرنامج اليومي'),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 200,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text('يوم ${index + 1}'),
                      ),
                      title: Text(trips.program[index]),
                    ),
                    Divider(),
                  ],
                ),
                itemCount: trips.program.length,
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Is_fivoret(data_From_Trip_ID)
            ? Icon(Icons.star)
            : Icon(Icons.star_border),
        onPressed: () => Add_fivoret(data_From_Trip_ID),
      ),
    );
  }
}
