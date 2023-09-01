// Business object
import '../../domain/entities/promo.dart';

class PromoModel extends Promo {
  const PromoModel({
    required super.eventName,
    required super.poster,
    required super.duration,
  });

  factory PromoModel.fromJson(Map<String, dynamic> json) => PromoModel(
      eventName: json["eventName"],
      poster: json["poster"],
      duration: json["duration"]);

  Map<String, dynamic> toJson() => {
        "eventName": eventName,
        "poster": poster,
        "duration": duration,
      };
}
