import 'package:get/get.dart';
import 'package:test_driven_development/promo/data/data_sources/api_service.dart';

import '../../data/repositories/promo_repository_impl.dart';
import '../../domain/entities/promo.dart';
import '../../domain/usecases/promo_usecase.dart';

class PromoController extends GetxController {
  late PromoUseCase _promoUseCase;

  @override
  onInit() {
    super.onInit();
    final apiService = ApiService();
    _promoUseCase = PromoUseCase(PromoRepositoryImpl(apiService));
  }

  Future<Promo> getFavPromo() async {
    return _promoUseCase.getFavPromo();
  }

  Future<Promo> getExpiryPromo() async {
    return _promoUseCase.getExpiryPromo();
  }

  Future<void> saveFavPromo({required Promo promo}) async {
    _promoUseCase.saveFavPromo(promo: promo);
  }

  Future<void> delFavPromo({required Promo promo}) async {
    _promoUseCase.delFavPromo(promo: promo);
  }
}
