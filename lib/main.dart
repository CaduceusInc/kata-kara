import 'package:barber_shop/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';
import './providers/products_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Products>(
      //builder: (ctx) => Products(),
      create: (BuildContext context) => Products(),
      child: MaterialApp(
        title: 'Kata-kara',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.purple,
          //fontFamily: 'Anton',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
