class Product {
  String _name;
  String _description;
  double _price;

  Product(this._name, this._description, this._price);

  String get name => _name;
  String get description => _description;
  double get price => _price;

  set name(String newName) {
    _name = newName;
  }

  set description(String newDescription) {
    _description = newDescription;
  }

  set price(double newPrice) {
    price = newPrice;
  }
}
