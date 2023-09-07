import 'package:flutter/material.dart';
import '../Screens/categoryTrips_Screen.dart';

class Category_itme extends StatelessWidget {
  final String  id;
  final String Tital;
  final String ImageUrl;
  Category_itme(this.Tital,this.ImageUrl,this.id);

  void SelectCat(BuildContext ctx){
    Navigator.of(ctx).pushNamed(categorysTrips_Screens.LinkCategoty,
    arguments: {
      "id":id,
      "Tital":Tital,
      "ImageUrl":ImageUrl
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()=> SelectCat(context),
      child: Stack(
        
    
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(ImageUrl,
            height: 250,
            fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(Tital,
            style: Theme.of(context).textTheme.headline5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4)
            ),
       
          ),
        ],
      ),
    );
  }
}