import '../entities/promo.dart';
import '../repositories/promo_repository.dart';

class PromoUseCase {
  final PromoRepository _promoRepository;

  PromoUseCase(this._promoRepository);

  Future<Promo> getFavPromo() async {
    return _promoRepository.getFavPromo();
  }

  Future<Promo> getExpiryPromo() async {
    return _promoRepository.getExpiryPromo();
  }

  Future<void> saveFavPromo({required Promo promo}) async {
    _promoRepository.saveFavPromo(promo: promo);
  }

  Future<void> delFavPromo({required Promo promo}) async {
    _promoRepository.delFavPromo(promo: promo);
  }
}
