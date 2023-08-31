import 'package:flutter/foundation.dart';

import '../../domain/entities/promo.dart';
import '../models/promo_model.dart';

// Data Service to provide data from api source or persistence source or somewhere
class ApiService {
  Future<void> delFavPromo({required Promo promo}) async {
    await Future.delayed(const Duration(seconds: 10));
    if (kDebugMode) {
      print("del Fav Promo pass");
    }
  }

  Future<void> saveFavPromo({required Promo promo}) async {
    await Future.delayed(const Duration(seconds: 10));
    if (kDebugMode) {
      print("save Fav Promo pass");
    }
  }

  Future<PromoModel?> getExpiryPromo() async {
    await Future.delayed(const Duration(seconds: 10));
    if (kDebugMode) {
      print("get Expiry Promo pass");
    }
    return PromoModel(
      eventName: "eventName",
      poster: "promo",
      duration: DateTime.now(),
    );
  }

  Future<PromoModel?> getFavPromo() async {
    await Future.delayed(const Duration(seconds: 10));
    if (kDebugMode) {
      print("get Fav Promo pass");
    }
    return PromoModel(
      eventName: "expiryEventName",
      poster: "expiryPromo",
      duration: DateTime.now(),
    );
  }
}
