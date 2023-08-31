import 'dart:async';

import '../../domain/entities/promo.dart';
import '../../domain/repositories/promo_repository.dart';
import '../data_sources/api_service.dart';
import '../models/promo_model.dart';

// Implemented Business logic methods
class PromoRepositoryImpl implements PromoRepository {
  late ApiService _apiServices;

  PromoRepositoryImpl() {
    _apiServices = ApiService();
  }

  @override
  Future<void> delFavPromo({required Promo promo}) async {
    _apiServices.delFavPromo(promo: promo);
  }

  @override
  Future<void> saveFavPromo({required Promo promo}) async {
    _apiServices.saveFavPromo(promo: promo);
  }

  @override
  Future<PromoModel> getExpiryPromo() async {
    final promo = await _apiServices.getExpiryPromo();
    if (promo == null) {
      throw "There is an error to get expiry promo";
    }
    return promo;
  }

  @override
  Future<PromoModel> getFavPromo() async {
    final promo = await _apiServices.getFavPromo();
    if (promo == null) {
      throw "There is an error to get Fav promo";
    }
    return promo;
  }
}
