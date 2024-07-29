import 'product.dart';

class ProductManager {
  List<Product> _products = [];

  void addProduct(Product product) {
    _products.add(product);
  }

  void showAllProduct() {
    if (_products.isEmpty) {
      print('No product available');
    } else {
      for (int i = 0; i < _products.length; i++) {
        print('');
        print("${i + 1}. ${_products[i].name}");
        print("         Description: ${_products[i].description}");
        print("         Price: ${_products[i].price}");
      }
    }
  }

  Product? viewProduct(String name) {
    for (var product in _products) {
      if (product.name == name) {
        print("${product.name}");
        print("         Description: ${product.description}");
        print("         Price: ${product.price}");
        return product;
      }
    }
    print("Product not found");
    return null;
  }

  void editProduct(
    String name, {
    String? newName,
    String? newDescription,
    double? newPrice,
  }) {
    var product = viewProduct(name);
    if (product != null) {
      if (newName != null && newName.isNotEmpty) product.name = newName;
      if (newDescription != null && newDescription.isNotEmpty)
        product.description = newDescription;
      if (newPrice != null && newPrice > 0) product.price = newPrice;
      print('Product updated: ${product.name}');
    }
  }

  void deleteProduct(String name) {
    var product = viewProduct(name);
    if (product != null) {
      _products.remove(product);
      print('Product deleted: ${product.name}');
    }
  }
}
