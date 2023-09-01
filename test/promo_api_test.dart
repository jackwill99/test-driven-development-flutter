import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test_driven_development/http/http_client.dart';
import 'package:test_driven_development/promo/data/data_sources/api_service.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';

import 'helpers/json_reader.dart';

void main() {
  late DioAdapter adapter;
  late ApiService service;
  setUp(() {
    adapter = DioAdapter(dio: ClientHttp.client);
    service = ApiService();
  });

  test(
      "Should return the promotion model when the response code is success(200)",
      () async {
    // arrange
    adapter.onGet(
      "http://example.com",
      (server) => server.reply(
        200,
        readJson("promo_dummy.json"),
      ),
    );

    // act
    final result = await service.getFavPromo();

    // assert
    expect(result, isA<PromoModel>());
  });
}
