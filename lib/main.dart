import 'package:flutter/material.dart';
import 'package:trivile_app/Screens/categoryTrips_Screen.dart';
import 'package:trivile_app/Screens/categorys_Screens.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        primaryColor: Colors.blue[300],
        useMaterial3: true,
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            fontFamily: 'ElMessiri',
            color: Colors.white
          ),
          headline6: TextStyle(
            fontFamily: 'ElMessiri',
            color: Colors.black,
            fontSize: 15
          )
        )
      ),
      home: Category_Screen(),
      routes: {
        categorysTrips_Screens.LinkCategoty: (ctx)=> categorysTrips_Screens()
      },
    );
  }
}
