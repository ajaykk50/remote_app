import 'package:flutter/material.dart';
import 'package:state_management_provider/models/product.dart';

import '../widgets/products_grid.dart';

class ProductsOverviewScreens extends StatelessWidget {
  ProductsOverviewScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MyShop')),
      body: ProductsGrid(),
    );
  }
}
