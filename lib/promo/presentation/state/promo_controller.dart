import 'package:get/get.dart';

import '../../data/repositories/promo_repository_impl.dart';
import '../../domain/entities/promo.dart';
import '../../domain/usecases/promo_usecase.dart';

class PromoController extends GetxController {
  late PromoUseCase _promoUseCase;

  @override
  onInit() {
    super.onInit();
    _promoUseCase = PromoUseCase(PromoRepositoryImpl());
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
