class Urls {
  static String baseUrl =
      'https://g5-flutter-learning-path-be.onrender.com/api/v2';

  static String getProductById(String id) => '$baseUrl/products/$id';
  static String getAllProducts() => '$baseUrl/products';

  static String getUser() => '$baseUrl/users/me';
}
