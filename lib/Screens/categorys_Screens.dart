import 'package:flutter/material.dart';
import 'package:trivile_app/widgat/category_Item.dart';
import '../data_app.dart';
class Category_Screen extends StatelessWidget {
  const Category_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دليل سياحي",
        style: Theme.of(context).textTheme.headline5,
        ),
        backgroundColor:Theme.of(context).primaryColor,
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),

        children: Categories_data.map((e) => Category_itme(e.title,e.imageUrl,e.id)).toList(),
      ),
    );
  }
}
