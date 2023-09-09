import 'package:flutter/material.dart';
import 'package:trivile_app/Screens/Filter_Screen.dart';
import 'package:trivile_app/Screens/Trips_Detels.dart';
import 'package:trivile_app/Screens/categoryTrips_Screen.dart';
import 'package:trivile_app/Screens/categorys_Screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:trivile_app/Screens/tabsbar_Screen.dart';
import 'package:trivile_app/data_app.dart';
import 'package:trivile_app/modiles/trip_modile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _Filters = {
    'summer': false,
    'winter': false,
    'famly': false,
  };
  List<Trip> _avilapel = Trips_data;

  List<Trip> _MyFivoret = [];

  void add_fiveorit(String tripID) {
    print("is open $tripID");
    final index = _MyFivoret.indexWhere((trip) {
      return trip.id == tripID;
    });
    if (index >= 0) {
      print("is open 1");
      setState(() {
        _MyFivoret.removeAt(index);
      });
    } else {
      print("is open 2");
      setState(() {
        _MyFivoret.add(Trips_data.firstWhere((trip) {
          return trip.id == tripID;
        }));
      });
    }
  }

  bool is_Add_In_Fiveorit(String tripID) {
    return _MyFivoret.any((trip) => trip.id == tripID);
  }

  void FilterCat(Map<String, bool> filters) {
    setState(() {
      _Filters = filters;
      _avilapel = _avilapel.where((trip) {
        if (_Filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_Filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_Filters['famly'] == true && trip.isForFamilies != true) {
          return false;
        }

        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // Arabic
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'ElMessiri',
                  color: Colors.blue[300],
                  fontSize: 15),
              headline4: TextStyle(
                  fontFamily: 'ElMessiri',
                  color: const Color.fromARGB(255, 40, 158, 255),
                  fontSize: 23),
              headline5: TextStyle(
                  fontFamily: 'ElMessiri',
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20))),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Tabsbar_Screen(_MyFivoret),
        categorysTrips_Screens.LinkCategoty: (ctx) =>
            categorysTrips_Screens(_avilapel),
        Trips_Detals.PageLink: (ctx) =>
            Trips_Detals(add_fiveorit, is_Add_In_Fiveorit),
        Filter_Screen.Filter_ScreenLink: (ctx) =>
            Filter_Screen(FilterCat, _Filters),
      },
    );
  }
}
