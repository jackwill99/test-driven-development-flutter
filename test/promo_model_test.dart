import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development/promo/data/models/promo_model.dart';
import 'package:test_driven_development/promo/domain/entities/promo.dart';

import 'helpers/json_reader.dart';

void main() {
  final tPromoModel = PromoModel(
    duration: 3,
    eventName: "Love O'clock",
    poster: 'Love',
  );

  test("Should be a sub-class of promo entity", () async {
    // assert
    expect(tPromoModel, isA<Promo>());
  });

  test("Should return a valid model from json", () async {
    // arrange
    Map<String, dynamic> map = readJson("promo_dummy.json");

    // act
    final result = PromoModel.fromJson(map);

    // assert
    expect(result, tPromoModel);
  });

  test("Should return a json from map", () async {
    // arrange
    Map<String, dynamic> map = readJson("promo_dummy.json");

    // act
    final result = tPromoModel.toJson();

    // assert
    expect(result, equals(map));
  });
}
