import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';
import 'package:test_driven_development/promo/domain/repositories/promo_repository.dart';
import 'package:test_driven_development/promo/domain/usecases/promo_usecase.dart';

import 'promo_test.mocks.dart';

@GenerateMocks([PromoRepository])
void main() {
  late MockPromoRepository repo;
  late PromoUseCase usecase;
  setUp(() {
    repo = MockPromoRepository();
    usecase = PromoUseCase(repo);
  });

  group("promo test", () {
    test("Testing get fav promotion", () async {
      // arrange
      final tPromoModel = PromoModel(
        duration: DateTime.now(),
        eventName: "eventName",
        poster: 'poster',
      );
      when(repo.getFavPromo()).thenAnswer((_) async => tPromoModel);

      // action
      final result = await usecase.getFavPromo();

      // assert
      expect(result, tPromoModel);
    });
  });
}
