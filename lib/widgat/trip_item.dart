import 'package:flutter/material.dart';
import 'package:trivile_app/Screens/Trips_Detels.dart';
import 'package:trivile_app/adsManager.dart';

import '../modiles/trip_modile.dart';

class Trip_item_Card extends StatelessWidget {
  final String tital;
  final String id;
  final String imageUrl;
  final int duration;
  final Season season;
  final TripType tripType;

  const Trip_item_Card({
    super.key,
    required this.tital,
    required this.id,
    required this.imageUrl,
    required this.duration,
    required this.season,
    required this.tripType,
  });
  String get seasonAr {
    switch (season) {
      case Season.Autumn:
        return 'خريف';
        break;
      case Season.Spring:
        return 'الربيع';
        break;
      case Season.Winter:
        return 'الشتاء';
        break;
      case Season.Summer:
        return 'الصيف';
        break;
      default:
        return 'غير معرويف';
        break;
    }
  }

  String get tripTypeAr {
    switch (tripType) {
      case TripType.Activities:
        return 'أنشطة';
        break;
      case TripType.Exploration:
        return 'استكشاف';
        break;
      case TripType.Recovery:
        return 'استعادة';
        break;
      case TripType.Therapy:
        return 'مُعَالَجَة';
        break;
      default:
        return 'غير معرويف';
        break;
    }
  }

  void SelectTrip(BuildContext ctx) {
    showInterstitial();
    Navigator.of(ctx).pushNamed(Trips_Detals.PageLink, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.8)
                        ],
                        stops: [
                          0.6,
                          1
                        ]),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 250,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    tital,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.today, color: Colors.brown),
                      SizedBox(
                        width: 10,
                      ),
                      Text('$duration Days',
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wb_sunny, color: Colors.brown),
                      SizedBox(
                        width: 10,
                      ),
                      Text(season.name,
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.family_restroom, color: Colors.brown),
                      SizedBox(
                        width: 10,
                      ),
                      Text(tripType.name,
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
