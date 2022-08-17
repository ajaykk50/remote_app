import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/providers/products.dart';
import 'package:state_management_provider/screens/product_detail_screen.dart';
import 'package:state_management_provider/screens/products_overview_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductsOverviewScreens(),
        routes: {
          ProductDetailScreen.routeName: ((ctx) => const ProductDetailScreen())
        },
      ),
    );
  }
}
