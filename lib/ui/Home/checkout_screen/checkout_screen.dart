import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_taste/model/dish.dart';
import 'package:tech_taste/ui/core/bag_provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BagProvider bagProvider = Provider.of<BagProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sacola"),
        actions: [
          TextButton(
            onPressed: () {
              bagProvider.clearBag();
            },
            child: Text("Limpar", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Column(
                spacing: 12.0,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Pedidos", textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Column(
              
                    children: 
                      List.generate(
                        bagProvider.getMapByAmount().keys.length,
                        (index){
                          Dish dish = bagProvider.getMapByAmount().keys.toList()[index];
                           return ListTile(
                            leading: Image.asset(
                              'assets/dishes/default.png',
                              width: 48,
                              height: 48,
                            ),
                            title: Text(dish.name),
                            subtitle: Text("R\$${dish.price.toStringAsFixed(2)}"),
                            trailing:Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                 IconButton(onPressed: (){
                                  bagProvider.removeDish(dish);
              
                                 }, icon: Icon(Icons.remove_circle)),
                                  Text("${bagProvider.getMapByAmount()[dish]}"),
                                 IconButton(onPressed: (){
                                  bagProvider.addAllDishes([dish]);
                                 }, icon: Icon(Icons.add_circle)),
              
                              ],
                            ));
                        }),
                    
                  ),
              
                 Text(
                "Total de pedidos: R\$${bagProvider.totalPrice.toStringAsFixed(2)}", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
               SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                         
                        }, child: Text('FiNALIZAR PEDIDO',style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}