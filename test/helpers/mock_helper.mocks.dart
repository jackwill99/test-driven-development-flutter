// Mocks generated by Mockito 5.4.2 from annotations
// in test_driven_development/test/helpers/mock_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:test_driven_development/promo/domain/entities/promo.dart'
    as _i2;
import 'package:test_driven_development/promo/domain/repositories/promo_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePromo_0 extends _i1.SmartFake implements _i2.Promo {
  _FakePromo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PromoRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPromoRepository extends _i1.Mock implements _i3.PromoRepository {
  MockPromoRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Promo> getFavPromo() => (super.noSuchMethod(
        Invocation.method(
          #getFavPromo,
          [],
        ),
        returnValue: _i4.Future<_i2.Promo>.value(_FakePromo_0(
          this,
          Invocation.method(
            #getFavPromo,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Promo>);
  @override
  _i4.Future<_i2.Promo> getExpiryPromo() => (super.noSuchMethod(
        Invocation.method(
          #getExpiryPromo,
          [],
        ),
        returnValue: _i4.Future<_i2.Promo>.value(_FakePromo_0(
          this,
          Invocation.method(
            #getExpiryPromo,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Promo>);
  @override
  _i4.Future<void> saveFavPromo({required _i2.Promo? promo}) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveFavPromo,
          [],
          {#promo: promo},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> delFavPromo({required _i2.Promo? promo}) =>
      (super.noSuchMethod(
        Invocation.method(
          #delFavPromo,
          [],
          {#promo: promo},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
