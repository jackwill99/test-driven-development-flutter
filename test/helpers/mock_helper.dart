import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:test_driven_development/promo/domain/repositories/promo_repository.dart';

@GenerateMocks(
  [PromoRepository],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
