import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:product_6/core/constants/constants.dart';
import 'package:product_6/core/error/exception.dart';
import 'package:product_6/features/product/data/data_sources/remote_data_source.dart';
import 'package:product_6/features/product/data/models/product_model.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late ProductRemoteDataSourceImpl productRemoteDataSourceImpl;
  setUp(() {
    mockHttpClient = MockHttpClient();
    productRemoteDataSourceImpl =
        ProductRemoteDataSourceImpl(client: mockHttpClient);
  });

  const testId = '1';

  group('get specific product by Id', () {
    test('should return  product model when the response code is 200',
        () async {
      // arrange
      when(
        mockHttpClient.get(
          Uri.parse(
            Urls.getProdcutById(testId),
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          readJson('helpers/dummy_data/dummy_product_data.json'),
          200,
        ),
      );

      // act
      final result = await productRemoteDataSourceImpl.getProductById(testId);

      // assert

      expect(result, isA<ProductModel>());
    });

    test(
        'should throw a server exception  when the response code is 404 or other',
        () async {
      // arrange
      when(
        mockHttpClient.get(
          Uri.parse(
            Urls.getProdcutById(testId),
          ),
        ),
      ).thenAnswer(
        (_) async => http.Response(
          'Not found',
          404,
        ),
      );

      // act
      final result = productRemoteDataSourceImpl.getProductById(testId);

      // assert

      expect(result, throwsA(isA<ServerException>()));
    });
  });
}
