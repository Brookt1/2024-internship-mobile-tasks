class Urls {
  static const String baseUrl =
      'https://g5-flutter-learning-path-be.onrender.com/api/v1/products';
  static const String apiKey = '';
  static String getProdcutById(String id) => '$baseUrl/$id';
  static String getProducts() => baseUrl;
}
