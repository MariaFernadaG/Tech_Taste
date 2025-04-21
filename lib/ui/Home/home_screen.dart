import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/categories_data.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/ui/Home/widgets/categories.dart';
import 'package:tech_taste/ui/Home/widgets/restaurant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantData restaurantData = Provider.of<RestaurantData>(context);
    ///<qual o tipo do providor que esta esperando>
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 32,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 147,
                  ),
                ),
                Text(
                  'Boas-vindas!',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                TextField(),
                Text(
                  'Escolha por categoria',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
               SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8.0,
                    children: List.generate(CategoriesData.listCategories.length, (index){
                    return CategoryWiget(category: CategoriesData.listCategories[index]);
                  }),),
                ),
                Image.asset('assets/banners/banner_promo.png'),
                Text(
                  'Bem avaliados',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Column(
                  spacing: 12.0,
                  children: List.generate(restaurantData.listRestaurant.length, (index) {
                    return RestaurantWidget(restaurant: restaurantData.listRestaurant[index]);
                  }),
                ),
                SizedBox(height: 64,)
              ],
            ),
          ),
        ));
  }
}
