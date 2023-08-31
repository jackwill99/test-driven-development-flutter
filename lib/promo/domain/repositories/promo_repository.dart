// Abstract Business logic methods
import '../entities/promo.dart';

abstract class PromoRepository {
  Future<Promo> getFavPromo();

  Future<Promo> getExpiryPromo();

  Future<void> saveFavPromo({required Promo promo});

  Future<void> delFavPromo({required Promo promo});
}
