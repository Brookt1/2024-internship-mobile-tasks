import 'dart:io';
import 'product.dart';
import 'product_manager.dart';

void main() {
  var productManager = ProductManager();
  productManager.addProduct(Product('Car', 'Best car', 123.1));
  productManager.addProduct(Product('Car1', 'Best car', 123.1));
  productManager.addProduct(Product('Car2', 'Best car', 123.1));

  while (true) {
    print('');
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');
    stdout.write('Choose an option: ');
    var choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter product name: ');
      var name = stdin.readLineSync()!;
      stdout.write('Enter product description: ');
      var description = stdin.readLineSync()!;
      stdout.write('Enter product price: ');
      var price = double.parse(stdin.readLineSync()!);
      productManager.addProduct(Product(name, description, price));
    } else if (choice == '2') {
      productManager.showAllProduct();
    } else if (choice == '3') {
      stdout.write('Enter product name to view: ');
      var name = stdin.readLineSync()!;
      productManager.viewProduct(name);
    } else if (choice == '4') {
      stdout.write('Enter product name to edit: ');
      var name = stdin.readLineSync()!;
      stdout.write('Enter new product name (leave blank to keep current): ');
      var newName = stdin.readLineSync();
      stdout.write(
          'Enter new product description (leave blank to keep current): ');
      var newDescription = stdin.readLineSync();
      stdout.write('Enter new product price (leave blank to keep current): ');
      var newPriceInput = stdin.readLineSync();
      double? newPrice = newPriceInput != null && newPriceInput.isNotEmpty
          ? double.parse(newPriceInput)
          : null;
      productManager.editProduct(name,
          newName: newName, newDescription: newDescription, newPrice: newPrice);
    } else if (choice == '5') {
      stdout.write('Enter product name to delete: ');
      var name = stdin.readLineSync()!;
      productManager.deleteProduct(name);
    } else if (choice == '6') {
      exit(0);
    } else {
      print('Invalid choice, please try again.');
    }

    print('');
  }
}
