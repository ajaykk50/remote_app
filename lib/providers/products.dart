import 'package:flutter/material.dart';
import 'package:state_management_provider/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt- it is pretty Red',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p2',
      title: 'White Shirt',
      description: 'A red shirt- it is pretty White',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p3',
      title: 'Blue Shirt',
      description: 'A red shirt- it is pretty Blue',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p4',
      title: 'Green Shirt',
      description: 'A red shirt- it is pretty Green',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p5',
      title: 'Yellow Shirt',
      description: 'A red shirt- it is pretty Yellow',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p6',
      title: 'Black Shirt',
      description: 'A red shirt- it is pretty Black',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
    Product(
      id: 'p7',
      title: 'Orange Shirt',
      description: 'A red shirt- it is pretty Orange',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772242_1280.jpg',
      isFavouite: true,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
