import 'package:flutter/material.dart';
import 'package:state_management_provider/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
            backgroundColor: Colors.black26,
            leading: IconButton(
              padding: EdgeInsets.all(0),
              iconSize: 15,
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            trailing: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 15,
              icon: const Icon(Icons.shopping_cart),
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.center,
            )),
        child: GestureDetector(
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (ctx) => ProductDetailScreen(
            //       title: title,
            //     ),
            //   ),
            // );
            Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
