import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/data/restaurant_data.dart';
import 'package:tech_taste/ui/SplashScreen/splash_screen.dart';
import 'package:tech_taste/ui/core/app.theme.dart';

void main()async  {
   WidgetsFlutterBinding.ensureInitialized();
  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurants();
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context){ return restaurantData;})], child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.appTheme,
      home: SplashScreen(),
    );
  }
}

