part of 'product_cubit.dart';


class ProductsState {
  final List<Map<String, dynamic>> favorites;

  var x = {
    "id": 1,
    "name": "MacBook Pro 2024"
    "photo": "https://cdn.akakce.com/z/apple/macbook-pro-m2-pro-16-gb-512-gb-ssd-14-mphe3tu-a-uzay-grisi.jpg"
  };

  ProductsState({this.favorites = const []});
}