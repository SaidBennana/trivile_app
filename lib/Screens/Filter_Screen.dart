import 'package:flutter/material.dart';
import 'package:trivile_app/widgat/app_drawr.dart';

class Filter_Screen extends StatefulWidget {
  static const Filter_ScreenLink = '/filter_screen';
  Function saveFilter;
  Map<String, bool> _Filters;

  Filter_Screen(this.saveFilter, this._Filters);
  @override
  State<Filter_Screen> createState() => _Filter_ScreenState();
}

class _Filter_ScreenState extends State<Filter_Screen> {
  var _Sammer = false;
  var _Wintar = false;
  var _Family = false;
  @override
  void initState() {
    _Sammer = widget._Filters['summer']!;
    _Wintar = widget._Filters['winter']!;
    _Family = widget._Filters['famly']!;
    super.initState();
  }

  SwitchListTile ListOf_Switchas(String Tital, String SubSital,
      var counrntVlaue, ValueChanged<bool>? ocClick) {
    return SwitchListTile(
      value: counrntVlaue,
      title: Text(Tital),
      subtitle: Text(SubSital),
      onChanged: ocClick,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  final sendData = {
                    'summer': _Sammer,
                    'winter': _Wintar,
                    'famly': _Family,
                  };
                  widget.saveFilter(sendData);
                });
              },
              icon: Icon(Icons.save, color: Colors.white))
        ],
        title: Text(
          "Filter",
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
      ),
      drawer: App_Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(children: [
              ListOf_Switchas('Summer trips', 'Show summer trips only', _Sammer,
                  (newvalue) {
                setState(() {
                  _Sammer = newvalue;
                });
              }),
              SizedBox(
                height: 10,
              ),
              ListOf_Switchas('winter trips', 'Show winter trips only', _Wintar,
                  (newvalue) {
                setState(() {
                  _Wintar = newvalue;
                });
              }),
              SizedBox(
                height: 10,
              ),
              ListOf_Switchas('family trips', 'Show family trips only', _Family,
                  (newvalue) {
                setState(() {
                  _Family = newvalue;
                });
              }),
            ]),
          ),
        ],
      ),
    );
  }
}
