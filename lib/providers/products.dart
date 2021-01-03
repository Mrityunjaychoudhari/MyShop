import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'HP 14 Ultra Thin',
      description:
          'Processor: Intel Core i3-1005G1(1.2 GHz base frequency, up to 3.4 GHz with Intel Turbo Boost Technology, 4 MB L3 cache, 2 cores)',
      price: 35990.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81MEmcBaxVL._SX679_.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Tygot Tripod Stand',
      description:
          'Material: Aluminium Alloy,Three-Way Head:The tripod\'s three-way head allows for ultimate versatility. Easily change the orientation of the camera from portrait to landscape--and almost any angle in between with the handy tilt motion. Turn the knobs to secure. The tripod also allows for full panoramic possibilities with its 360-degree swivel function',
      price: 1650.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/41B1QowMUhL._SX466_.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Samsung Galaxy M31s ',
      description:
          'Quad camera setup - 64MP (F1.8) main camera + 12MP (F2.2) ultra wide camera + 5MP (F2.4) depth camera + 5MP (F2.4) macro camera | 32MP (F2.2) front camera ',
      price: 19499.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61d-phh4GfL._SL1500_.jpg',
    ),
    Product(
      id: 'p4',
      title: 'BoAt Bluetooth',
      description:
          'Battery: Rockerz 255 offers a playback time of up to 6 hours and gets charged to 100% in 1.5 hours ',
      price: 1991.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61ku39qVEzL._SL1500_.jpg',
    ),
    Product(
      id: 'p5',
      title: 'SKMEI Watch',
      description:
          'Dial Color: Blue, Case Shape: Round, Dial Glass Material: Glass',
      price: 439.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61bTR1wJ9dL._UL1100_.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Flutter for Beginners',
      description:
          'Alessandro Biessek was born in the beautiful city of Chapeco, in the state of Santa Catarina, southern Brazil, in 1993. He is currently working on mobile application development for Android and iOS in his hometown.',
      price: 2183.00,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71yHsyWh4-L.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
