import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';
import 'package:test_driven_development/promo/data/repositories/promo_repository_impl.dart';

import 'helpers/json_reader.dart';
import 'helpers/mock_helper.mocks.dart';

void main() {
  late PromoRepositoryImpl promoRepo;
  late MockApiService apiService;

  setUp(() {
    apiService = MockApiService();
    promoRepo = PromoRepositoryImpl(apiService);
  });

  final tPromoModel = PromoModel.fromJson(readJson("promo_dummy.json"));

  test("Should return promo model when an api data source is success",
      () async {
    // arrange
    when(apiService.getFavPromo()).thenAnswer((_) async => tPromoModel);

    // act
    final result = await promoRepo.getFavPromo();

    // assert
    expect(result, isA<PromoModel>());
  });
}
