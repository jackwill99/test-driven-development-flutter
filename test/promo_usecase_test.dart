import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';
import 'package:test_driven_development/promo/domain/usecases/promo_usecase.dart';

import 'helpers/mock_helper.mocks.dart';

void main() {
  late MockPromoRepository repo;
  late PromoUseCase usecase;

  setUp(() {
    repo = MockPromoRepository();
    usecase = PromoUseCase(repo);
  });

  final tPromoModel = PromoModel(
    duration: 3,
    eventName: "Aug Promo",
    poster: 'Aug',
  );

  group("Use-case test of Promotion", () {
    test("Should return the fav promotion from the repository", () async {
      // arrange
      when(repo.getFavPromo()).thenAnswer((_) async => tPromoModel);

      // action
      final result = await usecase.getFavPromo();

      // assert
      expect(result, tPromoModel);
    });
  });
}
