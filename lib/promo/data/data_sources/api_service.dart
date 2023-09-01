import 'package:flutter/foundation.dart';
import 'package:test_driven_development/http/http_client.dart';

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
      duration: 1,
    );
  }

  Future<PromoModel?> getFavPromo() async {
    final response = await ClientHttp.get("http://example.com");
    if (response.statusCode == 200) {
      if (kDebugMode) {
        print("get Fav Promo pass");
      }
      return PromoModel.fromJson(response.data);
    }
    return null;
  }
}
