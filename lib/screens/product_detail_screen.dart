import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  //final String title;
  const ProductDetailScreen({
    Key? key,
    // required this.title,
  }) : super(key: key);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final productsData =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(productsData.title),
      ),
    );
  }
}
