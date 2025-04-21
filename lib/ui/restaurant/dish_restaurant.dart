import 'package:flutter/material.dart';
import 'package:tech_taste/model/dish.dart';
import 'package:tech_taste/model/restaurant.dart';

class DishRestaurant extends StatelessWidget {
  final Dish restaurant;
  const DishRestaurant({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                            'assets/dishes/default.png',
                           
                          ),
            Text(
              restaurant.name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "R\$${restaurant.price.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              restaurant.description,
              style: TextStyle(fontSize: 14.0),
            ),
            
          ],
        ),
      ),
      
    );
  }
}