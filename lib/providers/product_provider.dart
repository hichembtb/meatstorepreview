import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _recommendedProducts = [
    Product(
      id: '1',
      name: 'Beef Steak',
      price: 19.99,
      imageUrl:
          'https://images.unsplash.com/photo-1682159173065-2b49ffd61adb?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Product(
      id: '2',
      name: 'Chicken Breast',
      price: 9.49,
      imageUrl:
          'https://images.unsplash.com/photo-1682991136736-a2b44623eeba?q=80&w=3131&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Product(
      id: '3',
      name: 'Pork Ribs',
      price: 14.99,
      imageUrl:
          'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Product(
      id: '4',
      name: 'Sausages',
      price: 7.99,
      imageUrl:
          'https://images.unsplash.com/photo-1624772398061-bbfa87ec6b5a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Product(
      id: '5',
      name: 'Lamb Chops',
      price: 22.50,
      imageUrl:
          'https://images.unsplash.com/photo-1516685125522-3c528b8046ee?q=80&w=2477&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ];

  final Set<String> _cartProductIds = {};

  List<Product> get recommendedProducts => _recommendedProducts;
  bool isInCart(String productId) => _cartProductIds.contains(productId);

  void addToCart(Product product) {
    _cartProductIds.add(product.id);
    notifyListeners();
  }
}
