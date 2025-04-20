import 'package:flutter/material.dart';
import 'package:tech_taste/ui/Home/home_screen.dart';
import 'package:tech_taste/ui/core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:Stack(
        
        children: [
           Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                   Image.asset('assets/logo.png',
                   width: 192,
                  ),
                  Column(
                    children: [
                      Text("Um parceiro inovador para sua", style: TextStyle(color: Colors.white,fontSize: 22),),
                      Text("melhor experiência culinária!", style: TextStyle(color: AppColors.mainColor,fontSize: 22, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }, child: Text('Bora!',style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}