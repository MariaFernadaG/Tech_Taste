import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
              Image.asset('assets/banners/banner_promo.png'),
              Text(
                'Bem avaliados',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              
            ],
          ),
        ));
  }
}
